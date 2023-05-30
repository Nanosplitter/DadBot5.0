import discord
from discord import Interaction, app_commands
from discord.ext import commands
from discord.ext.commands import Context

class Caught(commands.Cog, name="caught"):
    def __init__(self, bot):
        self.bot = bot

    # Here you can just add your own commands, you'll always need to provide "self" as first parameter.
    @commands.hybrid_command(name="caught", description="See how many times everyone on the server has been caught by DadBot.")
    async def caught(self, context: Context):
        """
        [No Arguments] See how many times everyone on the server has been caught by DadBot.
        """
        members = []
        if context.guild is None:
            await context.reply("This command can only be used in a server.")
            return
        
        for i in context.guild.members:
            members.append(str(i))


# And then we finally add the cog to the bot so that it can load, unload, reload and use it's content.
def setup(bot):
    bot.add_cog(Caught(bot))