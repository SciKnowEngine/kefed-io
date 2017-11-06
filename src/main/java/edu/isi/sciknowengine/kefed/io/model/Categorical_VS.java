package edu.isi.sciknowengine.kefed.io.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "categoricalvs", type = "categoricalvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class Categorical_VS extends Nominal_VS {
	static final long serialVersionUID = 5130904214704817886L;

	@Id
	private int id;
	private List<String> category_labels = new ArrayList<String>();

	public List<String> getCategory_labels() {
		return this.category_labels;
	}

	public void setCategory_labels(List<String> category_labels) {
		this.category_labels = category_labels;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

}
