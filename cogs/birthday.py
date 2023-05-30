import os
import mysql.connector
import dateparser as dp
from dateparser.search import search_dates
import nextcord
from nextcord.ext import commands
from nextcord import Interaction, SlashOption

# Here we name the cog and create a new class for the cog.
class Birthday(commands.Cog, name="birthday"):
    def __init__(self, bot):
        self.bot = bot

    @nextcord.slash_command(name="setbirthday", description="Dad always remembers birthdays.")
    async def setbirthday(self, interaction: Interaction, birthday: str = SlashOption(description="A date, like 'January 4th'", required=True)):
        """
        [Date] Dad always remembers birthdays.
        """
        
        if interaction.user is None:
            await interaction.response.send_message("I can't find you in the server. Are you sure you're in it?")
            return

        if interaction.channel is None:
            await interaction.response.send_message("This command can only be used in a channel.")
            return
        
        mydb = mysql.connector.connect(
            host=self.bot.config["dbhost"],
            user=self.bot.config["dbuser"],
            password=self.bot.config["dbpassword"],
            database=self.bot.config["databasename"],
            autocommit=True
        )
        timeStr = birthday
        time = dp.parse(timeStr, settings={'TIMEZONE': 'US/Eastern', 'RETURN_AS_TIMEZONE_AWARE': True, 'PREFER_DATES_FROM': 'future', 'PREFER_DAY_OF_MONTH': 'first'})
        timeWords = timeStr
        f = '%Y-%m-%d %H:%M:%S'
        if time is None:
            searchRes = search_dates(timeStr, settings={'TIMEZONE': 'US/Eastern', 'RETURN_AS_TIMEZONE_AWARE': True, 'PREFER_DATES_FROM': 'future', 'PREFER_DAY_OF_MONTH': 'first'}, languages=['en'])
            for t in searchRes:
                time = t[1]
                timeWords = t[0]
                break
            
        if time is not None:
            timeUTC = dp.parse(time.strftime(f), settings={'TIMEZONE': 'US/Eastern', 'TO_TIMEZONE': 'UTC'})
            if timeUTC is None:
                await interaction.response.send_message("I can't understand that time, try again but differently")
                return
            mycursor = mydb.cursor(buffered=True)
            mycursor.execute(f"DELETE FROM birthdays WHERE author = '{interaction.user.name}' AND channel_id = {interaction.channel.id}")
            mydb.commit()
            mycursor.execute("INSERT INTO birthdays (author, mention, channel_id, birthday) VALUES ('"+ str(interaction.user.name) +"', '"+ str(interaction.user.mention) +"', '"+ str(interaction.channel.id) +"', '"+ timeUTC.strftime(f) +"')")
            print(time)
            await interaction.response.send_message("Your Birthday is set for: " + time.strftime(f) + " EST \n\nHere's the time I read: " + timeWords)
            mydb.commit()
            mycursor.close()
            mydb.close()
        else:
            await interaction.response.send_message("I can't understand that time, try again but differently")

def setup(bot):
    bot.add_cog(Birthday(bot))
