package connection;

import java.sql.Connection;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author mayuk
 */
public class DbconnectTest {
    
    public DbconnectTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getconnection method, of class Dbconnect.
     */
    @Test
    public void testGetconnection() {
        System.out.println("getconnection");
        String expResult = "com.mysql.jdbc.JDBC4Connection@13b6d03" ;
        String result = Dbconnect.getconnection().toString();
        assertEquals(expResult, result);
    }
}