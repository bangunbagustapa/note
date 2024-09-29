CREATE TABLE note_label (
    note_id BIGINT NOT NULL,
    label_id BIGINT NOT NULL,
    PRIMARY KEY (note_id, label_id),
    CONSTRAINT fk_note FOREIGN KEY (note_id) REFERENCES note(note_id) ON DELETE CASCADE,
    CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES label(label_id) ON DELETE CASCADE
);