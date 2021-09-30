package com.example.filrouge.dao
        
        import androidx.lifecycle.LiveData
        import androidx.room.Dao
        import androidx.room.Insert
        import androidx.room.Query
        import androidx.room.Update
        import com.example.filrouge.bean.*
        import kotlinx.coroutines.flow.Flow
        
        
@Dao
interface GameMultiAddOnDao {

    @Query("SELECT * FROM gameMultiAddOn")
    fun getList(): List<GameMultiAddOnTableBean>

    @Insert
    fun insert(game: GameMultiAddOnTableBean) : Long

    @Update
    fun update(game: GameMultiAddOnTableBean)

    @Query("DELETE FROM gameMultiAddOn")
    fun deleteAll()

    @Query("DELETE FROM gameMultiAddOn WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameMultiAddOn WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)

}  

    @Dao
interface GameTagDao {

    @Query("SELECT * FROM gameTag")
    fun getList(): List<GameTagTableBean>

    @Insert
    fun insert(game: GameTagTableBean) : Long

    @Update
    fun update(game: GameTagTableBean)

    @Query("DELETE FROM gameTag")
    fun deleteAll()

    @Query("DELETE FROM gameTag WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameTag WHERE tagId=:objectId")
    fun deleteWithTagId(objectId:Long)

}  

    @Dao
interface GameTopicDao {

    @Query("SELECT * FROM gameTopic")
    fun getList(): List<GameTopicTableBean>

    @Insert
    fun insert(game: GameTopicTableBean) : Long

    @Update
    fun update(game: GameTopicTableBean)

    @Query("DELETE FROM gameTopic")
    fun deleteAll()

    @Query("DELETE FROM gameTopic WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameTopic WHERE topicId=:objectId")
    fun deleteWithTopicId(objectId:Long)

}  

    @Dao
interface GameMechanismDao {

    @Query("SELECT * FROM gameMechanism")
    fun getList(): List<GameMechanismTableBean>

    @Insert
    fun insert(game: GameMechanismTableBean) : Long

    @Update
    fun update(game: GameMechanismTableBean)

    @Query("DELETE FROM gameMechanism")
    fun deleteAll()

    @Query("DELETE FROM gameMechanism WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameMechanism WHERE mechanismId=:objectId")
    fun deleteWithMechanismId(objectId:Long)

}  

    @Dao
interface GameDesignerDao {

    @Query("SELECT * FROM gameDesigner")
    fun getList(): List<GameDesignerTableBean>

    @Insert
    fun insert(game: GameDesignerTableBean) : Long

    @Update
    fun update(game: GameDesignerTableBean)

    @Query("DELETE FROM gameDesigner")
    fun deleteAll()

    @Query("DELETE FROM gameDesigner WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameDesigner WHERE designerId=:objectId")
    fun deleteWithDesignerId(objectId:Long)

}  

    @Dao
interface AddOnDesignerDao {

    @Query("SELECT * FROM addOnDesigner")
    fun getList(): List<AddOnDesignerTableBean>

    @Insert
    fun insert(game: AddOnDesignerTableBean) : Long

    @Update
    fun update(game: AddOnDesignerTableBean)

    @Query("DELETE FROM addOnDesigner")
    fun deleteAll()

    @Query("DELETE FROM addOnDesigner WHERE addOnId=:objectId")
    fun deleteWithAddOnId(objectId:Long)
    
    @Query("DELETE FROM addOnDesigner WHERE designerId=:objectId")
    fun deleteWithDesignerId(objectId:Long)

}  

    @Dao
interface MultiAddOnDesignerDao {

    @Query("SELECT * FROM multiAddOnDesigner")
    fun getList(): List<MultiAddOnDesignerTableBean>

    @Insert
    fun insert(game: MultiAddOnDesignerTableBean) : Long

    @Update
    fun update(game: MultiAddOnDesignerTableBean)

    @Query("DELETE FROM multiAddOnDesigner")
    fun deleteAll()

    @Query("DELETE FROM multiAddOnDesigner WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)
    
    @Query("DELETE FROM multiAddOnDesigner WHERE designerId=:objectId")
    fun deleteWithDesignerId(objectId:Long)

}  

    @Dao
interface GameArtistDao {

    @Query("SELECT * FROM gameArtist")
    fun getList(): List<GameArtistTableBean>

    @Insert
    fun insert(game: GameArtistTableBean) : Long

    @Update
    fun update(game: GameArtistTableBean)

    @Query("DELETE FROM gameArtist")
    fun deleteAll()

    @Query("DELETE FROM gameArtist WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameArtist WHERE artistId=:objectId")
    fun deleteWithArtistId(objectId:Long)

}  

    @Dao
interface AddOnArtistDao {

    @Query("SELECT * FROM addOnArtist")
    fun getList(): List<AddOnArtistTableBean>

    @Insert
    fun insert(game: AddOnArtistTableBean) : Long

    @Update
    fun update(game: AddOnArtistTableBean)

    @Query("DELETE FROM addOnArtist")
    fun deleteAll()

    @Query("DELETE FROM addOnArtist WHERE addOnId=:objectId")
    fun deleteWithAddOnId(objectId:Long)
    
    @Query("DELETE FROM addOnArtist WHERE artistId=:objectId")
    fun deleteWithArtistId(objectId:Long)

}  

    @Dao
interface MultiAddOnArtistDao {

    @Query("SELECT * FROM multiAddOnArtist")
    fun getList(): List<MultiAddOnArtistTableBean>

    @Insert
    fun insert(game: MultiAddOnArtistTableBean) : Long

    @Update
    fun update(game: MultiAddOnArtistTableBean)

    @Query("DELETE FROM multiAddOnArtist")
    fun deleteAll()

    @Query("DELETE FROM multiAddOnArtist WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)
    
    @Query("DELETE FROM multiAddOnArtist WHERE artistId=:objectId")
    fun deleteWithArtistId(objectId:Long)

}  

    @Dao
interface GamePublisherDao {

    @Query("SELECT * FROM gamePublisher")
    fun getList(): List<GamePublisherTableBean>

    @Insert
    fun insert(game: GamePublisherTableBean) : Long

    @Update
    fun update(game: GamePublisherTableBean)

    @Query("DELETE FROM gamePublisher")
    fun deleteAll()

    @Query("DELETE FROM gamePublisher WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gamePublisher WHERE publisherId=:objectId")
    fun deleteWithPublisherId(objectId:Long)

}  

    @Dao
interface AddOnPublisherDao {

    @Query("SELECT * FROM addOnPublisher")
    fun getList(): List<AddOnPublisherTableBean>

    @Insert
    fun insert(game: AddOnPublisherTableBean) : Long

    @Update
    fun update(game: AddOnPublisherTableBean)

    @Query("DELETE FROM addOnPublisher")
    fun deleteAll()

    @Query("DELETE FROM addOnPublisher WHERE addOnId=:objectId")
    fun deleteWithAddOnId(objectId:Long)
    
    @Query("DELETE FROM addOnPublisher WHERE publisherId=:objectId")
    fun deleteWithPublisherId(objectId:Long)

}  

    @Dao
interface MultiAddOnPublisherDao {

    @Query("SELECT * FROM multiAddOnPublisher")
    fun getList(): List<MultiAddOnPublisherTableBean>

    @Insert
    fun insert(game: MultiAddOnPublisherTableBean) : Long

    @Update
    fun update(game: MultiAddOnPublisherTableBean)

    @Query("DELETE FROM multiAddOnPublisher")
    fun deleteAll()

    @Query("DELETE FROM multiAddOnPublisher WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)
    
    @Query("DELETE FROM multiAddOnPublisher WHERE publisherId=:objectId")
    fun deleteWithPublisherId(objectId:Long)

}  

    @Dao
interface GamePlayingModDao {

    @Query("SELECT * FROM gamePlayingMod")
    fun getList(): List<GamePlayingModTableBean>

    @Insert
    fun insert(game: GamePlayingModTableBean) : Long

    @Update
    fun update(game: GamePlayingModTableBean)

    @Query("DELETE FROM gamePlayingMod")
    fun deleteAll()

    @Query("DELETE FROM gamePlayingMod WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gamePlayingMod WHERE playingModId=:objectId")
    fun deleteWithPlayingModId(objectId:Long)

}  

    @Dao
interface AddOnPlayingModDao {

    @Query("SELECT * FROM addOnPlayingMod")
    fun getList(): List<AddOnPlayingModTableBean>

    @Insert
    fun insert(game: AddOnPlayingModTableBean) : Long

    @Update
    fun update(game: AddOnPlayingModTableBean)

    @Query("DELETE FROM addOnPlayingMod")
    fun deleteAll()

    @Query("DELETE FROM addOnPlayingMod WHERE addOnId=:objectId")
    fun deleteWithAddOnId(objectId:Long)
    
    @Query("DELETE FROM addOnPlayingMod WHERE playingModId=:objectId")
    fun deleteWithPlayingModId(objectId:Long)

}  

    @Dao
interface MultiAddOnPlayingModDao {

    @Query("SELECT * FROM multiAddOnPlayingMod")
    fun getList(): List<MultiAddOnPlayingModTableBean>

    @Insert
    fun insert(game: MultiAddOnPlayingModTableBean) : Long

    @Update
    fun update(game: MultiAddOnPlayingModTableBean)

    @Query("DELETE FROM multiAddOnPlayingMod")
    fun deleteAll()

    @Query("DELETE FROM multiAddOnPlayingMod WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)
    
    @Query("DELETE FROM multiAddOnPlayingMod WHERE playingModId=:objectId")
    fun deleteWithPlayingModId(objectId:Long)

}  

    @Dao
interface GameLanguageDao {

    @Query("SELECT * FROM gameLanguage")
    fun getList(): List<GameLanguageTableBean>

    @Insert
    fun insert(game: GameLanguageTableBean) : Long

    @Update
    fun update(game: GameLanguageTableBean)

    @Query("DELETE FROM gameLanguage")
    fun deleteAll()

    @Query("DELETE FROM gameLanguage WHERE gameId=:objectId")
    fun deleteWithGameId(objectId:Long)
    
    @Query("DELETE FROM gameLanguage WHERE languageId=:objectId")
    fun deleteWithLanguageId(objectId:Long)

}  

    @Dao
interface AddOnLanguageDao {

    @Query("SELECT * FROM addOnLanguage")
    fun getList(): List<AddOnLanguageTableBean>

    @Insert
    fun insert(game: AddOnLanguageTableBean) : Long

    @Update
    fun update(game: AddOnLanguageTableBean)

    @Query("DELETE FROM addOnLanguage")
    fun deleteAll()

    @Query("DELETE FROM addOnLanguage WHERE addOnId=:objectId")
    fun deleteWithAddOnId(objectId:Long)
    
    @Query("DELETE FROM addOnLanguage WHERE languageId=:objectId")
    fun deleteWithLanguageId(objectId:Long)

}  

    @Dao
interface MultiAddOnLanguageDao {

    @Query("SELECT * FROM multiAddOnLanguage")
    fun getList(): List<MultiAddOnLanguageTableBean>

    @Insert
    fun insert(game: MultiAddOnLanguageTableBean) : Long

    @Update
    fun update(game: MultiAddOnLanguageTableBean)

    @Query("DELETE FROM multiAddOnLanguage")
    fun deleteAll()

    @Query("DELETE FROM multiAddOnLanguage WHERE multiAddOnId=:objectId")
    fun deleteWithMultiAddOnId(objectId:Long)
    
    @Query("DELETE FROM multiAddOnLanguage WHERE languageId=:objectId")
    fun deleteWithLanguageId(objectId:Long)

}  

    