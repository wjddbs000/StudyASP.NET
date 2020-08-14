using System;
using System.Net;
using EddyNewHome.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EddyNewHome.Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void CommonGetIp()
        {
            string expectedIp = "210.119.12.76";

            string actualIp = Commons.GetIpAddress();
            Assert.AreEqual(expectedIp, actualIp);

        }
    }
}
