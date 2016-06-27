namespace ElNamiBurrito
{
    using LeagueSharp.Common;

    internal class Program
    {
        #region Methods

        private static void Main(string[] args)
        {
            CustomEvents.Game.OnGameLoad += Nami.Game_OnGameLoad;
        }

        #endregion
    }
}