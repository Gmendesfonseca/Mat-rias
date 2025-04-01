def solve_n_queens(n):
    """Resolve o problema das N-Rainhas usando Backtracking."""
    def is_safe(board, row, col):
        for i in range(row):
            if board[i] == col or abs(board[i] - col) == abs(i - row):
                return False
        return True
    
    def solve(board, row):
        if row == n:
            solutions.append(board[:])
            return
        
        for col in range(n):
            if is_safe(board, row, col):
                board[row] = col
                solve(board, row + 1)
                board[row] = -1
    
    solutions = []
    board = [-1] * n
    solve(board, 0)
    return solutions

# Testando N-Rainhas
n_queens_solutions = solve_n_queens(8)
print("\nSoluções para 8-Rainhas (Mostrando 3 primeiras):")
for solution in n_queens_solutions[:3]:
    print(solution)
