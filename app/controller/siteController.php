<?php

include_once '../global.php';

// get the identifier for the page we want to load
$action = $_GET['action'];

// instantiate a SiteController and route it
$sc = new SiteController();
$sc->route($action);

class SiteController {

	// route us to the appropriate class method for this action
	public function route($action) {
		switch($action) {
			case 'home':
				$this->home();
				break;

			case 'news':
				$this->news();
				break;

			case 'about':
				$this->about();
				break;

			case 'login':
				$this->login();
				break;

			case 'redirectToLogin':
				$this->redirectToLogin();
				break;

			case 'signup':
				$this-> signup();
				break;

			case 'logout':
				$this->logout();
				break;
		}

	}


    public function home() {
    	$pageTitle = 'Home';
    	$pageContent = 'Welcome to my blog! Hope you enjoy it.';
		include_once SYSTEM_PATH.'/view/sitePage.tpl';
    }

    public function news() {
    	$pageTitle = 'News';
    	$pageContent = 'Some news items would go here.';
		include_once SYSTEM_PATH.'/view/sitePage.tpl';
    }

    public function about() {
    	$pageTitle = 'About';
    	$pageContent = 'Some introductory text would go here.';
		include_once SYSTEM_PATH.'/view/sitePage.tpl';
    }

		public function redirectToLogin() {
			$pageTitle = 'Login';
			include_once SYSTEM_PATH.'/view/login.tpl';
		}

		public function login() {
				$username = $_POST['uname'];
				$passwd = $_POST['pw'];

				if($username != ADMIN_USERNAME) {
					// username not found
					$_SESSION['error'] = "Incorrect username.";
				} elseif ($passwd != ADMIN_PASSWORD) {
					// passwords don't match
					$_SESSION['error'] = "Incorrect password.";
				} else {
					// password matches!
					// log me in
					$_SESSION['username'] = $username;
					$_SESSION['error'] = "You are logged in as ".$username.".";
				}

				// redirect to home page
				header('Location: '.BASE_URL);
		}
		public function signup() {
			$username = $_POST['username'];
			$password = $_POST['pw'];
			$firstName = $_POST['first_name'];
			$lastName = $_POST['last_name'];
			$email = $_POST['email'];

			$user = new AppUser();
			$user->set("first_name", $firstName);
			$user->set("last_name", $lastName);
			$user->set("email", $email);
			$user->set("username", $username);
			$user->set("pw", $password);
			$user->save();

				$_SESSION['username'] = $username;
				$_SESSION['error'] = "You are logged in as ".$username.".";


			// redirect to home page
			header('Location: '.BASE_URL);
	}

		public function logout() {
				// erase the session
				unset($_SESSION['username']);
				session_destroy(); // for good measure

				// redirect to home page
				header('Location: '.BASE_URL);
		}

}
