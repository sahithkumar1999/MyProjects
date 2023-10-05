# Import necessary modules
import random
import re

# Define a class called RuleBot
class RuleBot:
    # Define class-level attributes for potential negative responses, exit commands, and random starter questions
    negative_responses = ("no", "nope", "nah", "naw", "not a chance", "sorry")
    exit_commands = ("quit", "pause", "exit", "goodbye", "bye", "later")
    random_questions = ("Why are you here?", "Are there many humans like you?", "what do you consume for sustenance?",
                        "Is there intelligent life on this planet?", "Does Earth have a leader?", "What planets have you visited?", "what technology do you have on this planet?")

    # Initialize the class with a constructor (__init__) method
    def __init__(self):
        # Define a dictionary containing regular expressions to match user input with specific intents
        self.alienbabble = {'describe_planet_intent': r'.*\s*your planet.*',
                            'anser_why_intent': r'why\sare.',
                            'about_intellipat': r'.*\s*intellipaat'
                            }

    # Define a method to greet the user
    def greet(self):
        # Prompt the user for their name
        self.name = input("what is your name?\n")
        # Ask if the user wants to help the bot learn about their planet
        will_help = input(f"Hi {self.name}, I am Sahith's Rule-Bot. Will you help me learn about your planet?\n")
        # Check if the user's response is a negative response
        if will_help in self.negative_responses:
            print("Ok, have a nice Earth day!")
            return
        # If the user wants to help, start the conversation
        self.chat()

    # Define a method to handle the exit logic
    def make_exit(self, reply):
        for command in self.exit_commands:
            # Check if the user's reply matches an exit command
            if reply.lower() == command:
                print("Okay, have a nice Earth day!")
                return True
        # If the reply doesn't match any exit command, continue the conversation
        return False

    # Define a method to start the conversation
    def chat(self):
        reply = input(random.choice(self.random_questions)).lower()
        while not self.make_exit(reply):
            reply = input(self.match_reply(reply))

    # Define a method to match user input with intents and generate responses
    def match_reply(self, reply):
        for key, value in self.alienbabble.items():
            intent = key
            regex_pattern = value
            found_match = re.match(regex_pattern, reply)
            if found_match and intent == 'describe_planet_intent':
                return self.describe_planet_intent()
            elif found_match and intent == 'anser_why_intent':
                return self.answer_why_intent()
            elif found_match and intent == 'about_intellipat':
                return self.about_intellipat()
        # If no match is found, ask for more information
        if not found_match:
            return self.no_match_intent()

    # Define a method to respond to the "describe_planet_intent"
    def describe_planet_intent(self):
        responses = ("My planet is a utopia of diverse organisms and species.\n",
                     "I am from Opidipus, the capital of the Wayward Galaxies.\n")
        return random.choice(responses)

    # Define a method to respond to the "anser_why_intent"
    def answer_why_intent(self):
        responses = ("I come in peace\n", "I am here to collect data on your planet and its inhabitants\n", "I heard the coffee is good\n")
        return random.choice(responses)

    # Define a method to respond to the "about_intellipat" intent
    def about_intellipat(self):
        responses = ("Intellipaat is the world's largest company\n", "Used to learn the concepts\n", "Used for skill growth\n")
        return random.choice(responses)

    # Define a method to respond when no intent is matched
    def no_match_intent(self):
        responses = ("Please tell me more\n", "Tell me more\n", "Why do you say that?\n", "I see. Can you elaborate?\n")
        return random.choice(responses)

# Create an instance of the RuleBot class
AlienBot = RuleBot()
# Start the conversation by calling the greet method
AlienBot.greet()
