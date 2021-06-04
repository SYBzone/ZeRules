<?php


require_once('class.Avis.php');
require_once('class.Utilisateurs.php');
require_once('class.Jeu.php');


    class RegleAlternative implements JsonSerializable {
        private $id = 0;
        private $nom = null;
        private $duree = 0;
        private $nbjoueur = 0;
        private $createur = null;
        private $description = null;

        private $id_jeux = 0;
        private $id_utilisateur=0;

        private $lesAvisEmis = array();
        private $utilisateurPartage = array();
        private $jeu = array();

        /**
         * RegleAlternative constructor.
         * @param int $id
         * @param null $nom
         * @param int $duree
         * @param int $nbjoueur
         * @param null $createur
         * @param null $description
         * @param int $id_jeux
         * @param int $id_utilisateur
         */
        public function __construct($id, $id_jeux, $id_utilisateur, $nom, $createur, $description , $nbjoueur, $duree )
        {
            $this->id = $id;
            $this->nom = $nom;
            $this->duree = $duree;
            $this->nbjoueur = $nbjoueur;
            $this->createur = $createur;
            $this->description = $description;
            $this->id_jeux=$id_jeux;
            $this->id_utilisateur=$id_utilisateur;
        }

        /**
         * @return int
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * @param int $id
         */
        public function setId($id)
        {
            $this->id = $id;
        }

        /**
         * @return null
         */
        public function getNom()
        {
            return $this->nom;
        }

        /**
         * @param null $nom
         */
        public function setNom($nom)
        {
            $this->nom = $nom;
        }

        /**
         * @return int
         */
        public function getDuree()
        {
            return $this->duree;
        }

        /**
         * @param int $duree
         */
        public function setDuree($duree)
        {
            $this->duree = $duree;
        }

        /**
         * @return int
         */
        public function getNbjoueur()
        {
            return $this->nbjoueur;
        }

        /**
         * @param int $nbjoueur
         */
        public function setNbjoueur($nbjoueur)
        {
            $this->nbjoueur = $nbjoueur;
        }

        /**
         * @return null
         */
        public function getCreateur()
        {
            return $this->createur;
        }

        /**
         * @param null $createur
         */
        public function setCreateur($createur)
        {
            $this->createur = $createur;
        }

        /**
         * @return null
         */
        public function getDescription()
        {
            return $this->description;
        }

        /**
         * @param null $description
         */
        public function setDescription($description)
        {
            $this->description = $description;
        }

        /**
         * @return int
         */
        public function getIdJeux()
        {
            return $this->id_jeux;
        }

        /**
         * @param int $id_jeux
         */
        public function setIdJeux($id_jeux)
        {
            $this->id_jeux = $id_jeux;
        }

        /**
         * @return int
         */
        public function getIdUtilisateur()
        {
            return $this->id_utilisateur;
        }

        /**
         * @param int $id_utilisateur
         */
        public function setIdUtilisateur($id_utilisateur)
        {
            $this->id_utilisateur = $id_utilisateur;
        }

        public function jsonSerialize(){ return get_object_vars($this); }

        /**
         * @return array
         */
        public function getLesAvisEmis()
        {
            return $this->lesAvisEmis;
        }

        /**
         * @param array $lesAvisEmis
         */
        public function setLesAvisEmis($lesAvisEmis)
        {
            $this->lesAvisEmis = $lesAvisEmis;
        }

        /**
         * @return array
         */
        public function getUtilisateurPartage()
        {
            return $this->utilisateurPartage;
        }

        /**
         * @param array $utilisateurPartage
         */
        public function setUtilisateurPartage($utilisateurPartage)
        {
            $this->utilisateurPartage = $utilisateurPartage;
        }

        /**
         * @return array
         */
        public function getJeu()
        {
            return $this->jeu;
        }

        /**
         * @param array $jeu
         */
        public function setJeu($jeu)
        {
            $this->jeu = $jeu;
        }


    }
?>