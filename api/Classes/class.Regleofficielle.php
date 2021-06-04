<?php
require_once('class.Jeu.php');
class RegleOfficielle implements JsonSerializable {
    private $id = 0;
    private $nom = null;
    private $nbjoueur = 0;
    private $description = null;
    private $duree = 0;
    private $materiel = null;
    private $preparation = null;
    private $base = null;

    private $id_jeu = null;


    public function __construct($id, $id_jeu, $nom, $nbjoueur, $description, $duree, $materiel, $preparation, $base)
    {
        $this->id = $id;
        $this->nom = $nom;
        $this->nbjoueur = $nbjoueur;
        $this->description = $description;
        $this->duree = $duree;
        $this->materiel = $materiel;
        $this->preparation = $preparation;
        $this->base = $base;
        $this->id_jeu=$id_jeu;
    }

    /**
     * RegleOfficielle constructor.
     * @param int $id
     * @param null $nom
     * @param int $nbjoueur
     * @param null $description
     * @param int $duree
     * @param null $materiel
     * @param null $preparation
     * @param null $base
     * @param null $id_jeu

     */


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
     * @return null
     */
    public function getMateriel()
    {
        return $this->materiel;
    }

    /**
     * @param null $materiel
     */
    public function setMateriel($materiel)
    {
        $this->materiel = $materiel;
    }


    /**
     * @return null
     */
    public function getPreparation()
    {
        return $this->preparation;
    }

    /**
     * @param null $preparation
     */
    public function setPreparation($preparation)
    {
        $this->preparation = $preparation;
    }

    /**
     * @return null
     */
    public function getBase()
    {
        return $this->base;
    }

    /**
     * @param null $base
     */
    public function setBase($base)
    {
        $this->base = $base;
    }

    /**
     * @return null
     */
    public function getIdJeu()
    {
        return $this->id_jeu;
    }

    /**
     * @param null $id_jeu
     */
    public function setIdJeu($id_jeu)
    {
        $this->id_jeu = $id_jeu;
    }





    public function jsonSerialize(){ return get_object_vars($this); }



}


?>