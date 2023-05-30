import discord
from discord import Interaction, app_commands
from discord.ext import commands
from discord.ext.commands import Context

import mysql.connector

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
            await context.reply("Hey! You can use this command in a server!")
            return
        
        for i in context.guild.members:
            members.append(str(i))
        
        mydb = mysql.connector.connect(
            host=self.bot.config["dbhost"],
            user=self.bot.config["dbuser"],
            password=self.bot.config["dbpassword"],
            database=self.bot.config["databasename"]
        )
        mycursor = mydb.cursor(buffered=True)

        mycursor.execute("SELECT * FROM caught ORDER BY count DESC")
        
        rows = mycursor.fetchall()
        
        if rows is None:
            await context.reply("No one has been caught yet!")
            return
        
        self.bot.logger.info(rows)
        self.bot.logger.info(members)
        

        res = "```\n"
        res += "{:38s} {:s}\n".format("Username", "Caught Count")
        res += ("-"*51) + "\n"
        for m in rows:
            if m[1] in members:
                res += "{:38s} {:d}\n".format(m[1], int(m[2]))
        res += "```"
        mycursor.close()
        mydb.close()
        await context.reply(res)

# And then we finally add the cog to the bot so that it can load, unload, reload and use it's content.
async def setup(bot):
    await bot.add_cog(Caught(bot))