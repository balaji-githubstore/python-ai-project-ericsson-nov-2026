
import ollama

MODEL = "gemma3:1b"


def ask_ollama(prompt):
    response = ollama.chat(
        model=MODEL,
        messages=[{
            "role": "user",
            "content": prompt
        }],
        options={"temperature": 0.5}

    )
    return response["message"]["content"]


def generate_testcase(requirement):
    prompt = f"""
        You are a senior QA engineer. Write test cases for the requirement below.

        Requirement:
        {requirement}

        Rules:
        - Cover positive, negative, boundary, and edge scenarios.
        - Keep each test case short, specific, and testable.
        - Do not invent features that are not in the requirement.
        - Use exactly this format for every test case:

        - Output format
            - Test Case ID
            - Test Steps 
            - Expected Result

        Generate 8 test cases. Output only the test cases, with no introduction or summary.
        """
    return ask_ollama(prompt)


def correct_locator(html, current_locator):
    prompt = f"""
                You are selenium automation expert

                analyze the html: {html}

                Task: why {current_locator} is failed
                return updated correct locator for the same. 

             """
    return ask_ollama(prompt)


def analyze_error_log(log):
    prompt = f"""
        You are QA automation expert

        Analyze the log: ${log}

    Provide:
        1. Error summary
        2. Possible root cause 
        3. recommended fix 

    """

    return ask_ollama(prompt)


