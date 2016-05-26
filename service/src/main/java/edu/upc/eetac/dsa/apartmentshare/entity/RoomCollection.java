package edu.upc.eetac.dsa.apartmentshare.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import edu.upc.eetac.dsa.apartmentshare.*;
import org.glassfish.jersey.linking.Binding;
import org.glassfish.jersey.linking.InjectLink;
import org.glassfish.jersey.linking.InjectLinks;

import javax.ws.rs.core.Link;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mazp on 30/11/15.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RoomCollection {

    @InjectLinks(
            {
                    @InjectLink(resource = ApartmentshareRootAPIResource.class, style = InjectLink.Style.ABSOLUTE, rel = "home", title = "Apartmentshare Root API"),
                    @InjectLink(resource = LoginResource.class, style = InjectLink.Style.ABSOLUTE, rel = "logout", title = "Logout"),
                    @InjectLink(resource = RoomResource.class, style = InjectLink.Style.ABSOLUTE, rel = "current-room", title = "Current room"),
                    @InjectLink(resource = ListRoomResource.class, style = InjectLink.Style.ABSOLUTE, rel = "current-room-list", title = "Current room list"),
                    @InjectLink(resource = RoomResource.class, method = "getRooms", style = InjectLink.Style.ABSOLUTE, rel = "next", title = "Newer Rooms", bindings = {@Binding(name = "timestamp", value = "${instance.newestTimestamp}"), @Binding(name = "before", value = "false")}),
                    @InjectLink(resource = RoomResource.class, method = "getRooms", style = InjectLink.Style.ABSOLUTE, rel = "previous", title = "Older Rooms", bindings = {@Binding(name = "timestamp", value = "${instance.oldestTimestamp}"), @Binding(name = "before", value = "true")}),
                    @InjectLink(resource = ListRoomResource.class, method = "getRooms", style = InjectLink.Style.ABSOLUTE, rel = "next", title = "Newer Rooms", bindings = {@Binding(name = "timestamp", value = "${instance.newestTimestamp}"), @Binding(name = "before", value = "false")}),
                    @InjectLink(resource = ListRoomResource.class, method = "getRooms", style = InjectLink.Style.ABSOLUTE, rel = "previous", title = "Older Rooms", bindings = {@Binding(name = "timestamp", value = "${instance.oldestTimestamp}"), @Binding(name = "before", value = "true")}),
            }
    )
    private List<Link> links;
    private String flatid;
    private long newestTimestamp;
    private long oldestTimestamp;
    private List<Room> rooms = new ArrayList<>();

    public List<Link> getLinks() {
        return links;
    }

    public void setLinks(List<Link> links) {
        this.links = links;
    }


    public long getNewestTimestamp() {
        return newestTimestamp;
    }

    public void setNewestTimestamp(long newestTimestamp) {
        this.newestTimestamp = newestTimestamp;
    }

    public long getOldestTimestamp() {
        return oldestTimestamp;
    }

    public void setOldestTimestamp(long oldestTimestamp) {
        this.oldestTimestamp = oldestTimestamp;
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
    }

    public String getFlatid() {
        return flatid;
    }

    public void setFlatid(String flatid) {
        this.flatid = flatid;
    }
}