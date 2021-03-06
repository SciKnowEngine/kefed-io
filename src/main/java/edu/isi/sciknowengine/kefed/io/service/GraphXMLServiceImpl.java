package edu.isi.sciknowengine.kefed.io.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.sciknowengine.kefed.io.model.Study_Design;
import edu.isi.sciknowengine.kefed.io.repository.GraphTemplateRepository;

@Component
public class GraphXMLServiceImpl implements GraphXMLService{

	//@Autowired private GraphXMLRepository repositoryImpl;
	@Autowired private GraphTemplateRepository graphTemplateRepository ;
	
	/*@Override
	@Transactional
	public void saveXML(String xml) {
		
		String[] xmlString = xml.split("#");
		StringBuffer buffer = new StringBuffer();
		int i=3;
		while(i<=xmlString.length-1) { buffer = buffer.append(xmlString[i]);i++;};
		repositoryImpl.save(new GraphXML(xmlString[1],buffer.toString()));
		
	}*/

	@Override
	@Transactional
	public String findXMLById(String ontologyId) {
		Optional<Study_Design> graphXML = graphTemplateRepository.findById(ontologyId);
		if(null!=graphXML) return graphXML.get().getDiagramXML();
		return "";
	}

	@Override
	@Transactional
	public ArrayList<String> getAll() {
		ArrayList<String> templates = new ArrayList<String>();
		
		Iterator<Study_Design> arrayList = graphTemplateRepository.findAll().iterator();
		while(arrayList.hasNext()) templates.add(arrayList.next().getLabel());
		
		return templates;
	}

	@Override
	@Transactional
	public void deleteTemplate(String ontologyId) {
		Optional<Study_Design> graphXML = graphTemplateRepository.findById(ontologyId);
		if(null!=graphXML) graphTemplateRepository.delete(graphXML.get());
	}

	@Override
	@Transactional
	public void saveTemplate(Study_Design templateObject) {
		graphTemplateRepository.save(templateObject);
		
	}

	@Override
	public Study_Design getStudyDesign(String id) {
		Optional<Study_Design> graphXML = graphTemplateRepository.findById(id);
		if(null!=graphXML) return graphXML.get();
		return null;
	}
	
}
