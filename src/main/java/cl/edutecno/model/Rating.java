package cl.edutecno.model;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;
import lombok.*;

@Entity
@Table(name = "ratings")
@Getter
@Setter
@NoArgsConstructor
public class Rating {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "rating_id", nullable = false, unique = true)
	private Long id;
	@Max(5)
	@Min(1)
	private int rating;
	
	@Column(name = "show_id")
	private Long showId;
	

// RELACIONES
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user;



	@ManyToMany(mappedBy = "ratings")
	private List<Show> shows;


}
