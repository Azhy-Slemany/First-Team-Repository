import Button from "react-bootstrap/Button";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";

function NavScrollExample() {
  return (
    <div>
      <Navbar expand="lg" className="bg-body-tertiary py-3 bg-white shadow-sm">
        <Container className="">
          <Navbar.Brand className="fw-bold fs-4" href="#">
            Online store
          </Navbar.Brand>
          <Navbar.Toggle aria-controls="navbarScroll" />
          <Navbar.Collapse id="navbarScroll">
            <Nav
              className="mx-auto my-2 my-lg-0 "
              style={{ maxHeight: "100px" }}
              navbarScroll
            >
              <Nav.Link className="fw-bold" to="/product">
                Home
              </Nav.Link>
              <Nav.Link className="fw-bold " to="/Products">
                Product
              </Nav.Link>
              <Nav.Link className="fw-bold " to="/about">
                About
              </Nav.Link>
              <Nav.Link className="fw-bold" to="/contact">
                Contact
              </Nav.Link>
            </Nav>

            <Button to="/login" variant="outline-dark ">
              <i className="fa fa-sign-in me-1" aria-hidden="true"></i> Login
            </Button>
            <Button to="/register" variant="outline-dark ms-2">
              <i className="fa fa-user-plus" aria-hidden="true"></i> Register
            </Button>
            <Button to="/cart" variant="outline-dark ms-2">
              <i className="fa fa-shopping-cart" aria-hidden="true"></i> Cart
              (0)
            </Button>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </div>
  );
}

export default NavScrollExample;
