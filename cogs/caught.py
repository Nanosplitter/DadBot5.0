import nextcord
from typing import Optional
from nextcord.ext import commands
from nextcord import Interaction, SlashOption, ChannelType
from nextcord.abc import GuildChannel

import mysql.connector

class Caught(commands.Cog, name="caught"):
    def __init__(self, bot):
        self.bot = bot

    # Here you can just add your own commands, you'll always need to provide "self" as first parameter.
    @nextcord.slash_command(name="caught", description="See how many times everyone on the server has been caught by DadBot.")
    async def caught(self, interaction: Interaction):
        """
        [No Arguments] See how many times everyone on the server has been caught by DadBot.
        """
        members = []
        if interaction.guild is None:
            await interaction.response.send_message("Hey! You can use this command in a server!")
            return
        
        for i in interaction.guild.members:
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
            await interaction.response.send_message("No one has been caught yet!")
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
        await interaction.response.send_message(res)

# And then we finally add the cog to the bot so that it can load, unload, reload and use it's content.
async def setup(bot):
    await bot.add_cog(Caught(bot))