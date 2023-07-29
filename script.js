
const apiKey = '8c3fc00777d58953f8950140cb772032';
const apiUrl = `https://api.themoviedb.org/3/movie/popular?api_key=${apiKey}`;
const imageBaseUrl = 'https://image.tmdb.org/t/p/w500';


  const container=document.getElementById('movies-container');

  async function displayMovies() {
    const response= await fetch(apiUrl);
    const data= await response.json();
    const movies=data.results;

    console.log(movies);
    
    movies.forEach(movie => {
      const movieTitle=movie.title;
      const movieRating=movie.vote_average;
      const moviePosterPath=movie.poster_path;

      const movieElement=document.createElement('div');
      movieElement.classList.add('movie');

      movieElement.innerHTML=`
        
          <img src="${imageBaseUrl}${moviePosterPath}"/>
          <div class="movie-info">
            <h2>${movieTitle}</h2>
            <p>${movieRating}<i class='bx bxl-imdb'></i></p>
          </div>
   
      
      `;


      container.appendChild(movieElement);
    });

    return movies
  }

displayMovies();