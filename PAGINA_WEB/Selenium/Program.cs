using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using Selenium;

WebMethods_Test webMethods_Test = new();
ChromeDriver driver = new ChromeDriver();
driver.Url = "https://localhost:44340/Sources/Pages/FrmLogin.aspx";
//prueba login fallido
//webMethods_Test.test_login(driver,"user","123");
//prueba login exitoso
webMethods_Test.test_login(driver, "fahc", "@1234");
Thread.Sleep(1000);
//Prueba creación pedido
//webMethods_Test.test_crear_pedido(driver,"1","Calle 32 32 32","Miguel Cliente");
//Prueba modificación pedido
//webMethods_Test.test_modificar_pedido(driver, "1", "1", "Calle 32 32 32", "Miguel Cliente");
//Prueba eliminar pedido
webMethods_Test.test_eliminar_pedido(driver, "1");
