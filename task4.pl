% Define books and their genres
book('Harry Potter', fantasy).
book('The Hobbit', fantasy).
book('1984', dystopian).
book('Brave New World', dystopian).
book('The Catcher in the Rye', classic).
book('To Kill a Mockingbird', classic).

% Define user preferences
preference('Alice', fantasy).
preference('Bob', dystopian).
preference('Charlie', classic).

% Rule to recommend books based on user preferences
recommend(User, Book) :-
    preference(User, Genre),
    book(Book, Genre).

% Sample queries to get recommendations
% ?- recommend('Alice', Book).
% ?- recommend('Bob', Book).
% ?- recommend('Charlie', Book).

% Main function to run the recommendation system
main :-
    write('Enter user name: '),
    read(User),
    findall(Book, recommend(User, Book), Recommendations),
    write('Recommended books for '),
    write(User),
    write(': '),
    write(Recommendations),
    nl.

% Entry point
:- main.
