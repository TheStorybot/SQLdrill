Select * from book
Where title = 'The Lost Tribe'

Select * From Book_copies
Where BookID = '1'

Select * From Library_branch
---1.

Select *
From Book INNER JOIN Book_copies 
On Book.BookId = Book_copies.BookID 
INNER JOIN Library_branch AS LB 
ON LB.BranchID = Book_copies.BranchID

Where LB.BranchID = '3' and book.title = 'The Lost Tribe'

----2.

Select *
From Book INNER JOIN Book_copies 
On Book.BookId = Book_copies.BookID 
INNER JOIN Library_branch AS LB 
ON LB.BranchID = Book_copies.BranchID

Where book.title = 'The Lost Tribe'
---3.

Select * 
from Borrower LEFT OUter JOin Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.CardNo IS NULL

---4. 

SELECT B.title, Borrower.Name, borrower.[Address]
FROM Book_Loans AS BL Inner JOIN Borrower
On BL.CardNo = Borrower.CardNo
INNER JOin Library_branch AS LB 
ON LB.BranchID = BL.BranchID
INNER JOIN Book AS B ON B.BookId = BL.BookID
Where BL.DueDate = '05/02/92' AND LB.BranchID = '3'

---5.

SElECT LB.BranchName, Count(Book.bookID)
FROM Book INNER JOIN book_loans
ON Book.bookID = Book_loans.BookID
INNER JOIN library_branch as LB ON
LB.BranchID = Book_loans.BranchID 
WHERE LB.BRanchID = '1'
GROUP BY LB.BranchName


---6.

SELECT B.CardNo, B.Name, B.[Address], Count(*) 
FROM Borrower AS B , BOOK_LOANS AS L 
WHERE B.CardNo = L.CardNo 
GROUP BY B.CardNo, B.Name, B.[Address]
HAVING Count(*) > 5

----7.
SELECT book.title, Book_copies.No_Of_copies
 FROM  Book INNER JOIN Book_copies
 on book.BookId = Book_copies.BookID
 INNER JOin Library_branch AS LB 
 ON LB.BranchID = Book_copies.BranchID
 INNER JOIN book_authors ON book_authors.BookID = book.BookId
  WHERE AuthorName = 'Stephen King' and BranchName = 'Sharpstown'

---8. STORED PROCEDURE
  CREATE PROC GETBOOKCOPIESATBRANCH @Authorname varchar(50), @branchname varchar(50)
AS
SELECT book.title, Book_copies.No_Of_copies
 FROM  Book INNER JOIN Book_copies
 on book.BookId = Book_copies.BookID
 INNER JOin Library_branch AS LB 
 ON LB.BranchID = Book_copies.BranchID
 INNER JOIN book_authors ON book_authors.BookID = book.BookId
  WHERE AuthorName = @Authorname and BranchName = @branchname

  exec GETBOOKCOPIESATBRANCH 'Stephen KING', 'Sharpstown'