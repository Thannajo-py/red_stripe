package com.example.filrouge.dao

import androidx.lifecycle.LiveData
import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update
import com.example.filrouge.bean.*
import kotlinx.coroutines.flow.Flow



@Dao
interface GameDao {
    @Query("SELECT * FROM game ORDER BY name ASC")
    fun getAll(): Flow<List<GameTableBean>>
    
    @Query("SELECT * FROM game")
    fun getList(): List<GameTableBean>
    
    @Query("SELECT * FROM game WHERE name=:searchedName")
    fun getByName(searchedName:String): List<GameTableBean>
    
    @Insert
    fun insert(game: GameTableBean) : Long
    
    @Update
    fun update(game: GameTableBean)
    
    @Query("DELETE FROM game")
    fun deleteAll()
    
    @Query("DELETE FROM game WHERE id=:objectId")
    fun deleteOne(objectId:Long)
      
    @Query("SELECT * FROM game WHERE serverId=:id")
    fun getByServerId(id:Long):List<GameTableBean>
            
}
    
    
    
@Dao
interface AddOnDao {
    @Query("SELECT * FROM addOn ORDER BY name ASC")
    fun getAll(): Flow<List<AddOnTableBean>>
    
    @Query("SELECT * FROM addOn")
    fun getList(): List<AddOnTableBean>
    
    @Query("SELECT * FROM addOn WHERE name=:searchedName")
    fun getByName(searchedName:String): List<AddOnTableBean>
    
    @Insert
    fun insert(game: AddOnTableBean) : Long
    
    @Update
    fun update(game: AddOnTableBean)
    
    @Query("DELETE FROM addOn")
    fun deleteAll()
    
    @Query("DELETE FROM addOn WHERE id=:objectId")
    fun deleteOne(objectId:Long)
      
    @Query("SELECT * FROM addOn WHERE serverId=:id")
    fun getByServerId(id:Long):List<AddOnTableBean>
            
}
    
    
    
@Dao
interface MultiAddOnDao {
    @Query("SELECT * FROM multiAddOn ORDER BY name ASC")
    fun getAll(): Flow<List<MultiAddOnTableBean>>
    
    @Query("SELECT * FROM multiAddOn")
    fun getList(): List<MultiAddOnTableBean>
    
    @Query("SELECT * FROM multiAddOn WHERE name=:searchedName")
    fun getByName(searchedName:String): List<MultiAddOnTableBean>
    
    @Insert
    fun insert(game: MultiAddOnTableBean) : Long
    
    @Update
    fun update(game: MultiAddOnTableBean)
    
    @Query("DELETE FROM multiAddOn")
    fun deleteAll()
    
    @Query("DELETE FROM multiAddOn WHERE id=:objectId")
    fun deleteOne(objectId:Long)
      
    @Query("SELECT * FROM multiAddOn WHERE serverId=:id")
    fun getByServerId(id:Long):List<MultiAddOnTableBean>
            
}
    
    
    
@Dao
interface TagDao {
    @Query("SELECT * FROM tag ORDER BY name ASC")
    fun getAll(): Flow<List<TagTableBean>>
    
    @Query("SELECT * FROM tag")
    fun getList(): List<TagTableBean>
    
    @Query("SELECT * FROM tag WHERE name=:searchedName")
    fun getByName(searchedName:String): List<TagTableBean>
    
    @Insert
    fun insert(game: TagTableBean) : Long
    
    @Update
    fun update(game: TagTableBean)
    
    @Query("DELETE FROM tag")
    fun deleteAll()
    
    @Query("DELETE FROM tag WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface TopicDao {
    @Query("SELECT * FROM topic ORDER BY name ASC")
    fun getAll(): Flow<List<TopicTableBean>>
    
    @Query("SELECT * FROM topic")
    fun getList(): List<TopicTableBean>
    
    @Query("SELECT * FROM topic WHERE name=:searchedName")
    fun getByName(searchedName:String): List<TopicTableBean>
    
    @Insert
    fun insert(game: TopicTableBean) : Long
    
    @Update
    fun update(game: TopicTableBean)
    
    @Query("DELETE FROM topic")
    fun deleteAll()
    
    @Query("DELETE FROM topic WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface MechanismDao {
    @Query("SELECT * FROM mechanism ORDER BY name ASC")
    fun getAll(): Flow<List<MechanismTableBean>>
    
    @Query("SELECT * FROM mechanism")
    fun getList(): List<MechanismTableBean>
    
    @Query("SELECT * FROM mechanism WHERE name=:searchedName")
    fun getByName(searchedName:String): List<MechanismTableBean>
    
    @Insert
    fun insert(game: MechanismTableBean) : Long
    
    @Update
    fun update(game: MechanismTableBean)
    
    @Query("DELETE FROM mechanism")
    fun deleteAll()
    
    @Query("DELETE FROM mechanism WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface DesignerDao {
    @Query("SELECT * FROM designer ORDER BY name ASC")
    fun getAll(): Flow<List<DesignerTableBean>>
    
    @Query("SELECT * FROM designer")
    fun getList(): List<DesignerTableBean>
    
    @Query("SELECT * FROM designer WHERE name=:searchedName")
    fun getByName(searchedName:String): List<DesignerTableBean>
    
    @Insert
    fun insert(game: DesignerTableBean) : Long
    
    @Update
    fun update(game: DesignerTableBean)
    
    @Query("DELETE FROM designer")
    fun deleteAll()
    
    @Query("DELETE FROM designer WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface ArtistDao {
    @Query("SELECT * FROM artist ORDER BY name ASC")
    fun getAll(): Flow<List<ArtistTableBean>>
    
    @Query("SELECT * FROM artist")
    fun getList(): List<ArtistTableBean>
    
    @Query("SELECT * FROM artist WHERE name=:searchedName")
    fun getByName(searchedName:String): List<ArtistTableBean>
    
    @Insert
    fun insert(game: ArtistTableBean) : Long
    
    @Update
    fun update(game: ArtistTableBean)
    
    @Query("DELETE FROM artist")
    fun deleteAll()
    
    @Query("DELETE FROM artist WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface PublisherDao {
    @Query("SELECT * FROM publisher ORDER BY name ASC")
    fun getAll(): Flow<List<PublisherTableBean>>
    
    @Query("SELECT * FROM publisher")
    fun getList(): List<PublisherTableBean>
    
    @Query("SELECT * FROM publisher WHERE name=:searchedName")
    fun getByName(searchedName:String): List<PublisherTableBean>
    
    @Insert
    fun insert(game: PublisherTableBean) : Long
    
    @Update
    fun update(game: PublisherTableBean)
    
    @Query("DELETE FROM publisher")
    fun deleteAll()
    
    @Query("DELETE FROM publisher WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface PlayingModDao {
    @Query("SELECT * FROM playingMod ORDER BY name ASC")
    fun getAll(): Flow<List<PlayingModTableBean>>
    
    @Query("SELECT * FROM playingMod")
    fun getList(): List<PlayingModTableBean>
    
    @Query("SELECT * FROM playingMod WHERE name=:searchedName")
    fun getByName(searchedName:String): List<PlayingModTableBean>
    
    @Insert
    fun insert(game: PlayingModTableBean) : Long
    
    @Update
    fun update(game: PlayingModTableBean)
    
    @Query("DELETE FROM playingMod")
    fun deleteAll()
    
    @Query("DELETE FROM playingMod WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface LanguageDao {
    @Query("SELECT * FROM language ORDER BY name ASC")
    fun getAll(): Flow<List<LanguageTableBean>>
    
    @Query("SELECT * FROM language")
    fun getList(): List<LanguageTableBean>
    
    @Query("SELECT * FROM language WHERE name=:searchedName")
    fun getByName(searchedName:String): List<LanguageTableBean>
    
    @Insert
    fun insert(game: LanguageTableBean) : Long
    
    @Update
    fun update(game: LanguageTableBean)
    
    @Query("DELETE FROM language")
    fun deleteAll()
    
    @Query("DELETE FROM language WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    
@Dao
interface DifficultyDao {
    @Query("SELECT * FROM difficulty ORDER BY name ASC")
    fun getAll(): Flow<List<DifficultyTableBean>>
    
    @Query("SELECT * FROM difficulty")
    fun getList(): List<DifficultyTableBean>
    
    @Query("SELECT * FROM difficulty WHERE name=:searchedName")
    fun getByName(searchedName:String): List<DifficultyTableBean>
    
    @Insert
    fun insert(game: DifficultyTableBean) : Long
    
    @Update
    fun update(game: DifficultyTableBean)
    
    @Query("DELETE FROM difficulty")
    fun deleteAll()
    
    @Query("DELETE FROM difficulty WHERE id=:objectId")
    fun deleteOne(objectId:Long)
    
}
    
    
    

@Dao
interface UserDao {
    @Query("SELECT * FROM user ORDER BY login ASC")
    fun getAll(): Flow<List<UserTableBean>>

    @Query("SELECT * FROM user ORDER BY login ASC")
    fun checkEmpty(): List<UserTableBean>

    @Insert
    fun insert(user: UserTableBean) : Long

    @Query("SELECT * FROM user WHERE login=:name ORDER BY login ASC")
    fun getUser(name:String): List<UserTableBean>

    @Query("DELETE FROM user WHERE id=:userId")
    fun deleteUser(userId:Long)
}
