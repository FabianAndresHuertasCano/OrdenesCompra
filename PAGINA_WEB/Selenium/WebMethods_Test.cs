using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Selenium
{
    public class WebMethods_Test
    {
        public void test_login(ChromeDriver driver,string user, string pass)
        {
            driver.FindElement(By.Id("tbUsuario")).SendKeys(user);
            driver.FindElement(By.Id("tbClave")).SendKeys(pass);
            driver.FindElement(By.Name("ctl06")).Click();
        }

        public void test_crear_pedido(ChromeDriver driver, string orden,string destino, string cliente)
        {

            driver.FindElement(By.Id("body_BtnAdmin")).Click();
            driver.FindElement(By.Id("body_tbIdOrden")).SendKeys(orden);
            driver.FindElement(By.Id("body_tbDestino")).SendKeys(destino);
            driver.FindElement(By.Id("body_tbNombreCliente")).SendKeys(cliente);
            driver.FindElement(By.Name("ctl00$body$ctl01")).Click();            
        }

        public void test_modificar_pedido(ChromeDriver driver, string producto, string orden, string destino, string cliente)
        {

            driver.FindElement(By.Id("body_BtnAdmin")).Click();

            driver.FindElement(By.Id("body_tbIdProducto")).SendKeys(producto);
            driver.FindElement(By.Id("body_tbIdOrden")).SendKeys(orden);
            driver.FindElement(By.Id("body_tbDestino")).SendKeys(destino);
            driver.FindElement(By.Id("body_tbNombreCliente")).SendKeys(cliente);
            driver.FindElement(By.Name("ctl00$body$ctl02")).Click();
        }

        public void test_eliminar_pedido(ChromeDriver driver, string producto)
        {

            driver.FindElement(By.Id("body_BtnAdmin")).Click();

            driver.FindElement(By.Id("body_tbIdProducto")).SendKeys(producto);
            driver.FindElement(By.Name("ctl00$body$ctl03")).Click();
        }
    }
}
