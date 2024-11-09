 def forward(self, steps: int) -> str:
        """
        Returns - str
        Input - int
        ----------
        - Iterates through the DLL forewards `step` number of times
        - returns the appropriate value
        """
        while steps > 0 and self.curr.nxt:
            self.curr = self.curr.nxt
            steps -= 1
        return self.curr.val
        

if __name__ == "__main__":
    obj = BrowserHistory("google.com")
    obj.visit("twitter.com")
    param_2 = obj.back(1)
    param_3 = obj.forward(1)

    print(param_2)