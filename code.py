import matplotlib
def visit(self, url: str) -> None:
        """
        Returns - None
        Input - str
        ----------
        - Adds the current url to the DLL
        - sets both the next and previous values
        """
        url_node = DLL(url)
        self.curr.nxt = url_node
        url_node.prev = self.curr
        
        self.curr = url_node
