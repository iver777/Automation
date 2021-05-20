package runner;

import clientApi.FactoryRequest;
import clientApi.RequestInformation;
import clientApi.ResponseInformation;
import configuration.Configuration;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

import java.util.HashMap;
import java.util.Map;

import static configuration.Configuration.BASIC_AUTHENTICATION;
import static configuration.Configuration.BASIC_AUTHENTICATION_HEADER;

//Gherkin
public class MyStepdefs {

    ResponseInformation response= new ResponseInformation();
    Map<String, String> variables=new HashMap<>();

    @Given("^I have authentication to todo.ly$")
    public void iHaveAuthenticationToTodoLy()  {
        // Write code here that turns the phrase above into concrete actions

    }

    @When("^I send (POST|PUT|DELETE|GET) request '(.*)' with json and (TOKEN|BASIC) authentication$")
    public void iSendPOSTRequestApiUserJsonWithJsonAndBASICAuthentication(String method, String url, String authentication, String jsonBody ) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        RequestInformation request= new RequestInformation();
        request.setUrl(url);
        request.setBody(jsonBody);
        if(authentication.equals("TOKEN")){
            request.addHeaders(Configuration.TOKEN_AUTHENTICATION_HEADER, this.replaceVariables(authentication));

        }else{
            request.addHeaders(BASIC_AUTHENTICATION_HEADER, BASIC_AUTHENTICATION);

        }response= FactoryRequest.make(method.toLowerCase()).send(request);

    }

    @Then("^I excepted the response code (\\d+)$")
    public void iExceptedTheResponseCode(int expectResponseCode)  {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Response Code"+ response.getResponseCode());
        Assert.assertEquals("ERROR!! The response code es incorrecto", expectResponseCode, response.getResponseCode());
    }

    private String replaceVariables (String value){
        for(String key : this.variables.keySet()){
            value=value.replace(key, this.variables.get(key));
        }
        return value;
    }
}
