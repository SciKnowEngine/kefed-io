package edu.isi.ske.kefed.io.security;

import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.User;

@Repository
public interface UserRepository {
    User findByUsername(String username);
}