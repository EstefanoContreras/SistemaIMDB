package cl.edutecno.model;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Size;
import lombok.*;

import javax.persistence.JoinColumn;


@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id", nullable = false, unique = true)
	private Long id;
	
	@Size(min = 3, message = "Username must be present")
	private String username;
	@Size(min = 5, message = "Email must be greater present and in a valid format")
	private String email;
	@Size(min = 8, message = "Password must be greater than 8characters")
	private String password;
	@Transient
	private String passwordConfirmation;


// RELACIONES
// 1:N SHOW
	@OneToMany(mappedBy = "creatorShow", fetch = FetchType.LAZY)
	List<Show> userShows;


// 1:N RATING
	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
	private List<Rating> ratings;


// ROLES
	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private List<Role> roles;



}