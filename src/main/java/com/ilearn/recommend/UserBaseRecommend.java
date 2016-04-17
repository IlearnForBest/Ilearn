package com.ilearn.recommend;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import java.util.List;

/**
 * Created by sl on 16-4-17.
 */
public class UserBaseRecommend {

    /*long t1=System.currentTimeMillis();
    MysqlDataSource dataSource=new MysqlDataSource();
    dataSource.setServerName("localhost");
    dataSource.setUser("fansy");
    dataSource.setPassword("fansy");
    dataSource.setDatabaseName("bookstore");
    JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"mytable","uid","iid","val", "time");
    //	JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"mytable01","uid","iid","val",null);
    DataModel model=dataModel;
    UserSimilarity similarity=new PearsonCorrelationSimilarity(model);
    UserNeighborhood neighborhood=new NearestNUserNeighborhood(2,similarity,model);
    Recommender recommender=new GenericUserBasedRecommender(model,neighborhood,similarity);
    // the Recommender.recommend() method's arguments: first one is the user id;
    //     the second one is the number recommended
    List<RecommendedItem> recommendations=recommender.recommend(1, 2);
    for(RecommendedItem recommendation:recommendations){
        System.out.println(recommendation);
    }
    System.out.println("done and time spend:"+(System.currentTimeMillis()-t1));
}*/

    public static void main(String args[]) throws TasteException {

        MysqlDataSource dataSource=new MysqlDataSource();
        dataSource.setServerName("localhost");
        dataSource.setPort(3306);
        dataSource.setUser("root");
        dataSource.setPassword("111111");
        dataSource.setDatabaseName("db_ilearn");
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"ilearn_recommend",
                "user_id","resource_id","grade", "time");

        DataModel model=dataModel;
        UserSimilarity similarity=new PearsonCorrelationSimilarity(model);
        UserNeighborhood neighborhood=new NearestNUserNeighborhood(2,similarity,model);
        Recommender recommender=new GenericUserBasedRecommender(model,neighborhood,similarity);
        List<RecommendedItem> recommendations=recommender.recommend(1001, 1);
        //System.out.println("test1");
        for(RecommendedItem recommendation:recommendations){
           // System.out.println("test");
            System.out.println(recommendation);
        }

       // Long id = model.getItemIDs().nextLong();
//     // //  for(int id :ids){
        //    System.out.println(id);
//        }
      //  System.out.println(model.getItemIDs());


    }


}
