package com.example.client;

import com.google.gson.stream.JsonToken;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Scanner;
import com.google.gson.Gson;
public class HelloController implements Initializable {
    public   String token;
    @FXML
    private TextField registerLastname;

    @FXML
    private TextField registerName;

    @FXML
    private TextField registerPassword;

    @FXML
    private TextField registerUsername;
    @FXML
    private Label label1;

    @FXML
    private Label label2;

    @FXML
    private Label label3;

    @FXML
    private Label label4;

    @FXML
    private Label lastnameLabel;

    @FXML
    private Button loginButton;

    @FXML
    private Label nameLabel;

    @FXML
    private TextField password;

    @FXML
    private Button registerButton;

    @FXML
    private Button registerFormButton;

    @FXML
    private Label roleLabel;

    @FXML
    private Tab tab1;

    @FXML
    private Tab tab2;

    @FXML
    private Tab tab3;

    @FXML
    private TabPane tabPane;

    @FXML
    private TextField username;

    @FXML
    private Label usernameLabel;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        tab2.setDisable(true);
        tab3.setDisable(true);
        label1.setVisible(false);
        label2.setVisible(false);
        label3.setVisible(false);
        label4.setVisible(false);
        lastnameLabel.setVisible(false);
                nameLabel.setVisible(false);
        roleLabel.setVisible(false);
        usernameLabel.setVisible(false);


    }


    @FXML
    void register(ActionEvent event) {
        String username = registerUsername.getText();
        String password = registerPassword.getText();
        String name = registerName.getText();
        String last = registerLastname.getText();

        try {
            // Create JSON request body
            Map<String, String> requestBody = new HashMap<>();
            requestBody.put("username", username);
            requestBody.put("password", password);
            requestBody.put("name", name);
            requestBody.put("lastName", last);
            String jsonInput = new Gson().toJson(requestBody);

            // Open connection
            URL url = new URL("http://localhost:8080/register");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoOutput(true);

            // Send request
            OutputStream os = conn.getOutputStream();
            os.write(jsonInput.getBytes());
            os.flush();
            os.close();

            // Get response

            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();

            scanner.close();

            // Parse token from response
            token = response;

            if (token != null) {
                loginButton.setText("Login successful!");
                System.out.println("JWT Token: " + token);
                tab3.setDisable(false);
                tabPane.getSelectionModel().select(tab3);
            } else {
                loginButton.setText("Invalid credentials.");
            }
        } catch (Exception e) {
            loginButton.setText("Login failed. Check console.");
            e.printStackTrace();
        }
    }

    @FXML
    void switchToRegisterForm(ActionEvent event) {
        tab2.setDisable(false);
        tabPane.getSelectionModel().select(tab2);
    }

    @FXML
    void viewProfileAction(ActionEvent event) {

        label1.setVisible(true);
        label2.setVisible(true);
        label3.setVisible(true);
        label4.setVisible(true);
        lastnameLabel.setVisible(true);
        nameLabel.setVisible(true);
        roleLabel.setVisible(true);
        usernameLabel.setVisible(true);


        try {
            // Send GET request to /getUsername with the Bearer token
            URL url = new URL("http://localhost:8080/getUsername");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + token);  // Add the token to the Authorization header

            // Get response
            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();
            scanner.close();
            usernameLabel.setText(response);
            // Print the username
            System.out.println("Current username: " + response);
        } catch (Exception e) {
            System.out.println("Failed to get username. Check console.");
            e.printStackTrace();
        }

        try {
            // Send GET request to /getUsername with the Bearer token
            URL url = new URL("http://localhost:8080/getLastname");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + token);  // Add the token to the Authorization header

            // Get response
            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();
            scanner.close();
            lastnameLabel.setText(response);
            // Print the username
            System.out.println("Current lastname: " + response);
        } catch (Exception e) {
            System.out.println("Failed to get username. Check console.");
            e.printStackTrace();
        }
        try {
            // Send GET request to /getUsername with the Bearer token
            URL url = new URL("http://localhost:8080/getName");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + token);  // Add the token to the Authorization header

            // Get response
            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();
            scanner.close();
            nameLabel.setText(response);
            // Print the username
            System.out.println("Current Name: " + response);
        } catch (Exception e) {
            System.out.println("Failed to get username. Check console.");
            e.printStackTrace();
        }
        try {
            // Send GET request to /getUsername with the Bearer token
            URL url = new URL("http://localhost:8080/getRole");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + token);  // Add the token to the Authorization header

            // Get response
            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();
            scanner.close();
            roleLabel.setText(response);
            // Print the username
            System.out.println("Current Name: " + response);
        } catch (Exception e) {
            System.out.println("Failed to get username. Check console.");
            e.printStackTrace();
        }
    }
    @FXML
    void login(ActionEvent event) {
        String usernam = username.getText();
        String passwor = password.getText();

        if (usernam.isEmpty() || passwor.isEmpty()) {
           loginButton.setText("Please enter username and password.");
            return;
        }

        try {
            // Create JSON request body
            Map<String, String> requestBody = new HashMap<>();
            requestBody.put("username", usernam);
            requestBody.put("password", passwor);
            String jsonInput = new Gson().toJson(requestBody);

            // Open connection
            URL url = new URL("http://localhost:8080/login");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoOutput(true);

            // Send request
            OutputStream os = conn.getOutputStream();
            os.write(jsonInput.getBytes());
            os.flush();
            os.close();

            // Get response

            Scanner scanner = new Scanner(conn.getInputStream());
            String response = scanner.useDelimiter("\\A").next();

            scanner.close();

            // Parse token from response
           token = response;

            if (token != null) {
               loginButton.setText("Login successful!");
                System.out.println("JWT Token: " + token);
                tab3.setDisable(false);
                tabPane.getSelectionModel().select(tab3);
            } else {
                loginButton.setText("Invalid credentials.");
            }
        } catch (Exception e) {
            loginButton.setText("Login failed. Check console.");
            e.printStackTrace();
        }


    }
}