package edu.isi.ske.kefed.io.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.MetaData;
import edu.isi.ske.kefed.io.model.Study_Design;

@Repository
public interface GraphXMLService {
	void saveXML(String xml);

	String findXMLById(String ontologyId);

	ArrayList<String> getAll();

	void deleteTemplate(String ontologyId);

	void saveTemplate(Study_Design templateObject);
	
	void saveDataObjectProperty(MetaData dataObjectProperty);
	
	MetaData loadDataObjectProperty(int id);
}
