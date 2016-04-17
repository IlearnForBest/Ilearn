package com.ilearn.recommend;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import java.util.List;

/**
 * Created by sl on 16-4-18.
 */
public class ItemsBaseRecommend {

    public static void main(String args[]) throws TasteException {

        MysqlDataSource dataSource=new MysqlDataSource();
        dataSource.setServerName("localhost");
        dataSource.setPort(3306);
        dataSource.setUser("root");
        dataSource.setPassword("111111");
        dataSource.setDatabaseName("db_ilearn");
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"ilearn_resources",
                "user_id","resource_id","grade", "time");

        DataModel model=dataModel;
        UserSimilarity similarity=new PearsonCorrelationSimilarity(model);
        UserNeighborhood neighborhood=new NearestNUserNeighborhood(8,similarity,model);
        Recommender recommender=new GenericUserBasedRecommender(model,neighborhood,similarity);
        List<RecommendedItem> recommendations=recommender.recommend(5,10);
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
