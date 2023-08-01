
const ApiURL="https://fakestoreapi.com/products";

const container = document.getElementById("output");

async function displayProducts(){
  const response= await fetch(ApiURL);
  const data= await response.json();
  const products= data;


  data.forEach(product => {
  
    const image=product.image;
    const category=product.category;
    const price=product.price;
    const rate = product.rating.rate;
  
    const cardDiv=document.createElement('div');
    cardDiv.classList.add('card');

    cardDiv.innerHTML=`
      <button>Add+</button>
        <h3>${category}</h3>
          <div class="card-info">
            <img src="${image}" alt="${category}"/>
            <div>
              <p>Price: $${price}</p><p>Rate: ${rate}</p>
            </div>
          </div>
      

    `;

    container.appendChild(cardDiv);

  });
  return products;
}

displayProducts();