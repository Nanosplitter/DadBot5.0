import asyncio
import json
import logging
import os
import platform
import random
import sys

import aiosqlite
import nextcord
from typing import Optional
from nextcord.ext import commands, tasks
from nextcord import Interaction, SlashOption, ChannelType
from nextcord.abc import GuildChannel

import exceptions

if not os.path.isfile(path=f"{os.path.realpath(os.path.dirname(__file__))}/config.json"):
    sys.exit("'config.json' not found! Please add it and try again.")
else:
    with open(file=f"{os.path.realpath(os.path.dirname(__file__))}/config.json") as file:
        config = json.load(file)

class DadBot(commands.Bot):
    def __init__(self, loggingFormatter, botConfig) -> None:
        super().__init__(command_prefix=commands.when_mentioned_or(botConfig["prefix"]), intents=intents, help_command=None)
        self.logger: logging.Logger = loggingFormatter
        self.config: dict = botConfig

intents: nextcord.Intents = nextcord.Intents.default()
intents.message_content = True
intents.members = True

class LoggingFormatter(logging.Formatter):
    black: str = "\x1b[30m"
    red: str = "\x1b[31m"
    green: str = "\x1b[32m"
    yellow: str = "\x1b[33m"
    blue: str = "\x1b[34m"
    gray: str = "\x1b[38m"

    reset: str = "\x1b[0m"
    bold: str = "\x1b[1m"

    COLORS: dict[int, str] = {
        logging.DEBUG: gray + bold,
        logging.INFO: blue + bold,
        logging.WARNING: yellow + bold,
        logging.ERROR: red,
        logging.CRITICAL: red + bold,
    }

    def format(self, record) -> str:
        log_color: str = self.COLORS[record.levelno]
        format = "(black){asctime}(reset) (levelcolor){levelname:<8}(reset) (green){name}(reset) {message}"
        format: str = format.replace("(black)", self.black + self.bold)
        format = format.replace("(reset)", self.reset)
        format = format.replace("(levelcolor)", log_color)
        format = format.replace("(green)", self.green + self.bold)
        formatter = logging.Formatter(format, "%Y-%m-%d %H:%M:%S", style="{")
        return formatter.format(record)

logger: logging.Logger = logging.getLogger(name="discord_bot")
logger.setLevel(level=logging.INFO)

console_handler = logging.StreamHandler()
console_handler.setFormatter(LoggingFormatter())

file_handler = logging.FileHandler(filename="discord.log", encoding="utf-8", mode="w")
file_handler_formatter = logging.Formatter(
    "[{asctime}] [{levelname:<8}] {name}: {message}", "%Y-%m-%d %H:%M:%S", style="{"
)
file_handler.setFormatter(file_handler_formatter)

logger.addHandler(console_handler)
logger.addHandler(file_handler)


# async def init_db() -> None:
#     async with aiosqlite.connect(
#         database=f"{os.path.realpath(os.path.dirname(__file__))}/database/database.db"
#     ) as db:
#         with open(
#             file=f"{os.path.realpath(os.path.dirname(__file__))}/database/schema.sql"
#         ) as file:
#             await db.executescript(file.read())
#         await db.commit()

bot = DadBot(loggingFormatter=logger, botConfig=config)

@bot.event
async def on_ready() -> None:
    if bot.user is None:
        sys.exit("Bot has no user!")
    
    bot.logger.info(f"Logged in as {bot.user.name}")
    bot.logger.info(f"discord.py API version: {nextcord.__version__}")
    bot.logger.info(f"Python version: {platform.python_version()}")
    bot.logger.info(f"Running on: {platform.system()} {platform.release()} ({os.name})")
    bot.logger.info("-------------------")
    status_task.start()
    if config["sync_commands_globally"]:
        bot.logger.info("Syncing commands globally...")
        await bot.tree.sync()


@tasks.loop(minutes=1.0)
async def status_task() -> None:
    """
    Setup the game status task of the bot.
    """
    statuses: list[str] = ["with your mom"]
    await bot.change_presence(activity=nextcord.Game(name=random.choice(seq=statuses)))


@bot.event
async def on_message(message: nextcord.Message) -> None:
    if message.author == bot.user or message.author.bot:
        return
    await bot.process_commands(message)


@bot.event
async def on_command_completion(interaction: Interaction) -> None:
    full_command_name: str = interaction.command.qualified_name
    split: list[str] = full_command_name.split(" ")
    executed_command = str(split[0])
    if context.guild is not None:
        bot.logger.info(
            f"Executed {executed_command} command in {context.guild.name} (ID: {context.guild.id}) by {context.author} (ID: {context.author.id})"
        )
    else:
        bot.logger.info(
            f"Executed {executed_command} command by {context.author} (ID: {context.author.id}) in DMs"
        )


@bot.event
async def on_command_error(context: Context, error) -> None:
    if isinstance(error, commands.CommandOnCooldown):
        minutes, seconds = divmod(error.retry_after, 60)
        hours, minutes = divmod(minutes, 60)
        hours = hours % 24
        embed = discord.Embed(
            description=f"**Please slow down** - You can use this command again in {f'{round(hours)} hours' if round(hours) > 0 else ''} {f'{round(minutes)} minutes' if round(minutes) > 0 else ''} {f'{round(seconds)} seconds' if round(seconds) > 0 else ''}.",
            color=0xE02B2B,
        )
        await context.send(embed=embed)
    elif isinstance(error, exceptions.UserBlacklisted):
        embed = discord.Embed(
            description="You are blacklisted from using the bot!", color=0xE02B2B
        )
        await context.send(embed=embed)
        if context.guild:
            bot.logger.warning(
                f"{context.author} (ID: {context.author.id}) tried to execute a command in the guild {context.guild.name} (ID: {context.guild.id}), but the user is blacklisted from using the bot."
            )
        else:
            bot.logger.warning(
                f"{context.author} (ID: {context.author.id}) tried to execute a command in the bot's DMs, but the user is blacklisted from using the bot."
            )
    elif isinstance(error, exceptions.UserNotOwner):
        embed = discord.Embed(
            description="You are not the owner of the bot!", color=0xE02B2B
        )
        await context.send(embed=embed)
        if context.guild:
            bot.logger.warning(
                f"{context.author} (ID: {context.author.id}) tried to execute an owner only command in the guild {context.guild.name} (ID: {context.guild.id}), but the user is not an owner of the bot."
            )
        else:
            bot.logger.warning(
                msg=f"{context.author} (ID: {context.author.id}) tried to execute an owner only command in the bot's DMs, but the user is not an owner of the bot."
            )
    elif isinstance(error, commands.MissingPermissions):
        embed = discord.Embed(
            description="You are missing the permission(s) `"
            + ", ".join(error.missing_permissions)
            + "` to execute this command!",
            color=0xE02B2B,
        )
        await context.send(embed=embed)
    elif isinstance(error, commands.BotMissingPermissions):
        embed = discord.Embed(
            description="I am missing the permission(s) `"
            + ", ".join(error.missing_permissions)
            + "` to fully perform this command!",
            color=0xE02B2B,
        )
        await context.send(embed=embed)
    elif isinstance(error, commands.MissingRequiredArgument):
        embed = discord.Embed(
            title="Error!",
            # We need to capitalize because the command arguments have no capital letter in the code.
            description=str(error).capitalize(),
            color=0xE02B2B,
        )
        await context.send(embed=embed)
    else:
        raise error


async def load_cogs() -> None:
    for file in os.listdir(f"{os.path.realpath(os.path.dirname(__file__))}/cogs"):
        if file.endswith(".py"):
            extension = file[:-3]
            try:
                await bot.load_extension(f"cogs.{extension}")
                bot.logger.info(f"Loaded extension '{extension}'")
            except Exception as e:
                exception = f"{type(e).__name__}: {e}"
                bot.logger.error(f"Failed to load extension {extension}\n{exception}")


# asyncio.run(init_db())
asyncio.run(load_cogs())
bot.run(token=config["token"])
