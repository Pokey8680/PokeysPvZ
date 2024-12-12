.class public Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
.super Lcom/ea/nimble/Component;
.source "NimbleOriginFriendsServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/friends/INimbleOriginFriendsService;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    }
.end annotation


# static fields
.field private static EMAIL_REQUEST_CODE:I = 0x0

.field private static final GET_RECEIVED_INVITATION_LIST_URI:Ljava/lang/String; = "/friends/2/users/%s/invitations/inbound"

.field private static final GET_SENT_INVITATION_LIST_URI:Ljava/lang/String; = "/friends/2/users/%s/invitations/outbound"

.field private static final POST_SEND_FRIEND_INVITATION_URI:Ljava/lang/String; = "/friends/2/users/%s/invitations/outbound/%s"

.field private static final RESPOND_TO_FRIEND_INVITATION_URI:Ljava/lang/String; = "/friends/2/users/%s/invitations/inbound/%s"

.field private static final SEARCH_USER_BY_DISPLAY_NAME_URI:Ljava/lang/String; = "/proxy/identity/personas?displayName=%s*"

.field private static final SEARCH_USER_BY_EMAIL_URI:Ljava/lang/String; = "/proxy/identity/pids?email=%s"

.field private static SMS_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x1a29

    sput v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->SMS_REQUEST_CODE:I

    .line 55
    const/16 v0, 0x1a2a

    sput v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->EMAIL_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/Error;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .param p2, "x2"    # Lcom/ea/nimble/Error;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithError(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithSuccess(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->parseUserSearchByEmailResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->parseUserSearchByDisplayNameResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendRespondToFriendInvitationRequest(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .param p2, "x2"    # Lcom/ea/nimble/Error;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithError(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendGetFriendInvitationListRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    .param p5, "x5"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendSearchUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithSuccess(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .param p2, "x2"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
    .param p1, "x1"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .param p2, "x2"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    return-void
.end method

.method private createNimbleUserFromGosJson(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;
    .locals 9
    .param p1, "friend"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 1785
    new-instance v1, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleUser;-><init>()V

    .line 1789
    .local v1, "user":Lcom/ea/nimble/friends/NimbleUser;
    :try_start_0
    const-string v2, "origin"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setAuthenticatorId(Ljava/lang/String;)V

    .line 1790
    const-string v2, "displayName"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setDisplayName(Ljava/lang/String;)V

    .line 1791
    const-string v2, "friendType"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setFriendType(Ljava/lang/String;)V

    .line 1792
    const-string v2, "userId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setUserId(Ljava/lang/String;)V

    .line 1793
    const-string v2, "personaId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPersonaId(Ljava/lang/String;)V

    .line 1794
    const-string v2, "userId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    .line 1796
    const-string v2, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1798
    new-instance v2, Ljava/util/Date;

    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setRefreshTimestamp(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :cond_0
    :goto_0
    return-object v1

    .line 1802
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1805
    const-string v2, "Exception when parsing JSON response. Message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private createNimbleUserFromNexusJson(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;
    .locals 9
    .param p1, "friend"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 1816
    new-instance v1, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleUser;-><init>()V

    .line 1820
    .local v1, "user":Lcom/ea/nimble/friends/NimbleUser;
    :try_start_0
    const-string v2, "origin"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setAuthenticatorId(Ljava/lang/String;)V

    .line 1821
    const-string v2, "displayName"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setDisplayName(Ljava/lang/String;)V

    .line 1822
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setFriendType(Ljava/lang/String;)V

    .line 1823
    const-string v2, "pidId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setUserId(Ljava/lang/String;)V

    .line 1824
    const-string v2, "personaId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPersonaId(Ljava/lang/String;)V

    .line 1825
    const-string v2, "pidId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    .line 1827
    const-string v2, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1829
    new-instance v2, Ljava/util/Date;

    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setRefreshTimestamp(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    :cond_0
    :goto_0
    return-object v1

    .line 1833
    :catch_0
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1836
    const-string v2, "Exception when parsing JSON response. Message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getIdentityProxyUrlFromSynergy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 928
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "nexus.proxy"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "synergyIdentityServerProxyUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 934
    :cond_0
    const/4 v0, 0x0

    .line 946
    :cond_1
    :goto_0
    return-object v0

    .line 940
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 942
    const/4 v1, 0x0

    .line 943
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 942
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMdmAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getGosMdmAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOriginFriendsUrlFromSynergy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 893
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "eadp.friends.host"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "originFriendsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 899
    :cond_0
    const/4 v1, 0x0

    .line 911
    :goto_0
    return-object v1

    .line 905
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 907
    const/4 v1, 0x0

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 907
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 911
    goto :goto_0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    invoke-direct {v0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;-><init>()V

    const-string v1, "com.ea.nimble.friends.originfriendsservice"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .param p2, "code"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p3, "errMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1345
    if-nez p1, :cond_0

    .line 1347
    const-string v1, "Unable to invoke an error callback for Friends services because callback is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    :goto_0
    return-void

    .line 1351
    :cond_0
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-direct {v0, p2, p3}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1353
    .local v0, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-interface {p1, v2, v0}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private invokeFriendInvitationCallbackWithError(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/Error;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v1, 0x0

    .line 1362
    if-nez p1, :cond_0

    .line 1364
    const-string v0, "Unable to invoke an error callback for Friends services because callback is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-interface {p1, v1, p2}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private invokeFriendInvitationCallbackWithSuccess(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 1376
    if-nez p1, :cond_0

    .line 1378
    const-string v0, "Unable to invoke a success callback for Friends services because callback is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .param p2, "code"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p3, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1300
    const-string v1, "Unable to invoke an error callback for Friends services because callback is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-direct {v0, p2, p3}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1305
    .local v0, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;->onCallback(Ljava/util/ArrayList;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private invokeUserSearchCallbackWithError(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 1314
    if-nez p1, :cond_0

    .line 1316
    const-string v0, "Unable to invoke an error callback for Friends services because callback is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    :goto_0
    return-void

    .line 1320
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;->onCallback(Ljava/util/ArrayList;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private invokeUserSearchCallbackWithSuccess(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1329
    .local p2, "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-nez p1, :cond_0

    .line 1331
    const-string v0, "Unable to invoke a success callback for Friends services because callback is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    :goto_0
    return-void

    .line 1335
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;->onCallback(Ljava/util/ArrayList;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private isNimbleComponentAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1281
    const/4 v0, 0x0

    .line 1283
    .local v0, "bRet":Z
    invoke-static {p1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1285
    const/4 v0, 0x1

    .line 1288
    :cond_0
    return v0
.end method

.method private makeFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)Lcom/ea/nimble/HttpRequest;
    .locals 14
    .param p1, "nucleusId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "friendId"    # Ljava/lang/String;
    .param p4, "invitationComment"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getOriginFriendsUrlFromSynergy()Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "endpointUri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getMdmAppKey()Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "mdmAppKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 963
    :cond_0
    const-string v11, "Cannot make HTTP request for sending friend invitation because friends endpoint URI is empty or null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    const/4 v8, 0x0

    .line 1036
    :goto_0
    return-object v8

    .line 967
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_3

    .line 969
    :cond_2
    const-string v11, "Cannot make HTTP request for sending friend invitation because MDM app key is empty or null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    const/4 v8, 0x0

    goto :goto_0

    .line 973
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 975
    :cond_4
    const-string v11, "Cannot make HTTP request for sending friend invitation because access token is null or empty"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    const/4 v8, 0x0

    goto :goto_0

    .line 979
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_7

    .line 981
    :cond_6
    const-string v11, "Cannot make HTTP request for sending friend invitation because user\'s nucleus ID is null or empty"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    const/4 v8, 0x0

    goto :goto_0

    .line 985
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_9

    .line 987
    :cond_8
    const-string v11, "Cannot make HTTP request for sending friend invitation because target user\'s nucleus ID is null or empty"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    const/4 v8, 0x0

    goto :goto_0

    .line 991
    :cond_9
    const/4 v8, 0x0

    .line 995
    .local v8, "request":Lcom/ea/nimble/HttpRequest;
    const-string v11, "/friends/2/users/%s/invitations/outbound/%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 996
    .local v10, "uriParams":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 998
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 999
    .local v2, "data":Ljava/lang/StringBuffer;
    const-string v11, "source=mobile"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    if-eqz p4, :cond_a

    .line 1002
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 1004
    const-string v11, "&comment="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1005
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    :cond_a
    :try_start_0
    new-instance v9, Lcom/ea/nimble/HttpRequest;

    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1011
    .end local v8    # "request":Lcom/ea/nimble/HttpRequest;
    .local v9, "request":Lcom/ea/nimble/HttpRequest;
    :try_start_1
    sget-object v11, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v11, v9, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1013
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1014
    .local v1, "buffer":[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v11, v1

    invoke-direct {v7, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1015
    .local v7, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1016
    iput-object v7, v9, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 1018
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1019
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "X-AuthToken"

    move-object/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v11, "X-Application-Key"

    invoke-virtual {v5, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v11, "X-Api-Version"

    const-string v12, "2"

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iput-object v5, v9, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 1034
    .end local v9    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v8    # "request":Lcom/ea/nimble/HttpRequest;
    goto/16 :goto_0

    .line 1026
    .end local v1    # "buffer":[B
    .end local v5    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 1028
    .local v3, "e":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when creating HTTP request URL for send friend invitation. Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1031
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 1033
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when creating HTTP request URL for send friend invitation. Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1031
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v9    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v8    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_2

    .line 1026
    .end local v8    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v9    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_3
    move-exception v3

    move-object v8, v9

    .end local v9    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v8    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_1
.end method

.method private makeGetFriendInvitationListRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;
    .locals 10
    .param p1, "nucleusId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "apiUri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1131
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getOriginFriendsUrlFromSynergy()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "endpointUri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getMdmAppKey()Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, "mdmAppKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1136
    :cond_0
    const-string v7, "Cannot make HTTP request because friends endpoint URI is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    :goto_0
    return-object v4

    .line 1140
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1142
    :cond_2
    const-string v7, "Cannot make HTTP request because MDM app key is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 1148
    :cond_4
    const-string v7, "Cannot make HTTP request friends API URI is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1152
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 1154
    :cond_6
    const-string v7, "Cannot make HTTP request because access token is null or empty"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1158
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_9

    .line 1160
    :cond_8
    const-string v7, "Cannot make HTTP request because user\'s nucleus ID is null or empty"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1164
    :cond_9
    const/4 v4, 0x0

    .line 1169
    .local v4, "request":Lcom/ea/nimble/HttpRequest;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1170
    .local v6, "uriParams":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :try_start_0
    new-instance v5, Lcom/ea/nimble/HttpRequest;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1175
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .local v5, "request":Lcom/ea/nimble/HttpRequest;
    :try_start_1
    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v7, v5, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "X-AuthToken"

    invoke-virtual {v2, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v7, "X-Application-Key"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string v7, "X-Api-Version"

    const-string v8, "2"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iput-object v2, v5, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 1193
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    goto/16 :goto_0

    .line 1185
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating HTTP request URL. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1190
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating HTTP request URL. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1190
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_2

    .line 1185
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_1
.end method

.method private makeRespondToFriendInvitationRequest(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;
    .locals 11
    .param p1, "acceptRequest"    # Z
    .param p2, "nucleusId"    # Ljava/lang/String;
    .param p3, "friendId"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1047
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getOriginFriendsUrlFromSynergy()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "endpointUri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getMdmAppKey()Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, "mdmAppKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1052
    :cond_0
    const-string v7, "Cannot make HTTP request for responding to an invitation because end point URI is null or empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    :goto_0
    return-object v4

    .line 1056
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1058
    :cond_2
    const-string v7, "Cannot make HTTP request for responding to an invitation because MDM App Keyis null or empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 1064
    :cond_4
    const-string v7, "Cannot make HTTP request for responding to an invitation because nucleus ID is null or empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1068
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 1070
    :cond_6
    const-string v7, "Cannot make HTTP request for responding to an invitation because friend ID is null or empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1074
    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_9

    .line 1076
    :cond_8
    const-string v7, "Cannot make HTTP request for responding to an invitation because access token is null or empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1080
    :cond_9
    const/4 v4, 0x0

    .line 1085
    .local v4, "request":Lcom/ea/nimble/HttpRequest;
    const-string v7, "/friends/2/users/%s/invitations/inbound/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v10

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1086
    .local v6, "uriParams":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    :try_start_0
    new-instance v5, Lcom/ea/nimble/HttpRequest;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1092
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .local v5, "request":Lcom/ea/nimble/HttpRequest;
    if-eqz p1, :cond_a

    .line 1094
    :try_start_1
    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v7, v5, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1102
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1103
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "X-AuthToken"

    invoke-virtual {v2, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v7, "X-Application-Key"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v7, "X-Api-Version"

    const-string v8, "2"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    iput-object v2, v5, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    move-object v4, v5

    .line 1118
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    goto/16 :goto_0

    .line 1099
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_a
    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v7, v5, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1110
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 1112
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating HTTP request URL for responding to Friends request. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1115
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating HTTP request URL for responding to Friends request. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_3

    .line 1110
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private makeSearchUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;)Lcom/ea/nimble/HttpRequest;
    .locals 10
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "searchCriteria"    # Ljava/lang/String;
    .param p4, "criteriaType"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1204
    invoke-static {}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->getIdentityProxyUrlFromSynergy()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "endpointUri":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1208
    :cond_0
    const-string v7, "Cannot make user search HTTP request because endpoint URI is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    :goto_0
    return-object v3

    .line 1212
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1214
    :cond_2
    const-string v7, "Cannot make user search HTTP request because AccessToken is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1218
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 1220
    :cond_4
    const-string v7, "Cannot make user search HTTP request TokenType is empty or null"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1224
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 1226
    :cond_6
    const-string v7, "Cannot make user searchHTTP request because searchCriteria is null or empty"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1230
    :cond_7
    const/4 v3, 0x0

    .line 1235
    .local v3, "request":Lcom/ea/nimble/HttpRequest;
    const-string v6, ""

    .line 1237
    .local v6, "uriParams":Ljava/lang/String;
    sget-object v7, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->EMAIL:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    if-ne p4, v7, :cond_8

    .line 1239
    const-string v7, "/proxy/identity/pids?email=%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1247
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, "token":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/ea/nimble/HttpRequest;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1253
    .end local v3    # "request":Lcom/ea/nimble/HttpRequest;
    .local v4, "request":Lcom/ea/nimble/HttpRequest;
    :try_start_1
    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v7, v4, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1255
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Authorization"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v7, "X-Include-Underage"

    const-string v8, "true"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v7, "X-Expand-Results"

    const-string v8, "true"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iput-object v2, v4, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1271
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v3    # "request":Lcom/ea/nimble/HttpRequest;
    goto/16 :goto_0

    .line 1244
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "token":Ljava/lang/String;
    :cond_8
    const-string v7, "/proxy/identity/personas?displayName=%s*"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1263
    .restart local v5    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating search user HTTP request URL. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1268
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating search user HTTP request URL. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1268
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v3    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_3

    .line 1263
    .end local v3    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v4    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v3    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_2
.end method

.method private parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 1391
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v18

    .line 1392
    .local v18, "responseData":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1395
    .local v16, "parseError":Lcom/ea/nimble/Error;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 1397
    :cond_0
    new-instance v20, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v21

    .line 1398
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v20

    .line 1409
    :cond_1
    new-instance v20, Ljava/util/Scanner;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v21, "\\A"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v19

    .line 1410
    .local v19, "s":Ljava/util/Scanner;
    const-string v4, ""

    .line 1411
    .local v4, "data":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Scanner;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1412
    invoke-virtual/range {v19 .. v19}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 1415
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/Scanner;->close()V

    .line 1417
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v13, "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 1424
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v14, "jsonObj":Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    .line 1429
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 1431
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1433
    .local v9, "errorObject":Lorg/json/JSONObject;
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1434
    .local v10, "errorString":Ljava/lang/String;
    const-string v20, "code"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1436
    .local v8, "errorCode":I
    if-eqz v10, :cond_3

    .line 1437
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 1439
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v20, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v21, "Code: %d, Type: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 1440
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1442
    .end local v16    # "parseError":Lcom/ea/nimble/Error;
    .local v17, "parseError":Lcom/ea/nimble/Error;
    :try_start_1
    throw v17
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1502
    .end local v8    # "errorCode":I
    .end local v10    # "errorString":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v16, v17

    .line 1504
    .end local v9    # "errorObject":Lorg/json/JSONObject;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v17    # "parseError":Lcom/ea/nimble/Error;
    .local v5, "e":Lorg/json/JSONException;
    .restart local v16    # "parseError":Lcom/ea/nimble/Error;
    :goto_0
    const-string v20, "Exception when parsing JSON response. Error: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1505
    new-instance v16, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v16    # "parseError":Lcom/ea/nimble/Error;
    sget-object v20, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1506
    .restart local v16    # "parseError":Lcom/ea/nimble/Error;
    throw v16

    .line 1445
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v8    # "errorCode":I
    .restart local v9    # "errorObject":Lorg/json/JSONObject;
    .restart local v10    # "errorString":Ljava/lang/String;
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_3
    const/4 v13, 0x0

    .line 1520
    .end local v8    # "errorCode":I
    .end local v9    # "errorObject":Lorg/json/JSONObject;
    .end local v10    # "errorString":Ljava/lang/String;
    .end local v13    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_4
    :goto_1
    return-object v13

    .line 1449
    .restart local v13    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_5
    :try_start_2
    const-string v20, "entries"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1452
    .local v11, "friendsArray":Lorg/json/JSONArray;
    if-nez v11, :cond_7

    .line 1454
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1455
    .restart local v9    # "errorObject":Lorg/json/JSONObject;
    const-string v7, ""

    .line 1457
    .local v7, "errMessage":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1459
    const-string v20, "code"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1460
    .local v6, "errCode":I
    const-string v20, "type"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1462
    const-string v20, "Server error when retrieving GOS Friends. Code = %d, Message = %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v7, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1464
    .end local v16    # "parseError":Lcom/ea/nimble/Error;
    .restart local v17    # "parseError":Lcom/ea/nimble/Error;
    :try_start_3
    throw v17
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1469
    .end local v6    # "errCode":I
    .end local v17    # "parseError":Lcom/ea/nimble/Error;
    .restart local v16    # "parseError":Lcom/ea/nimble/Error;
    :cond_6
    :try_start_4
    const-string v7, "Generic Server error when retrieving GOS Friends."

    .line 1470
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1471
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v20, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1472
    .end local v16    # "parseError":Lcom/ea/nimble/Error;
    .restart local v17    # "parseError":Lcom/ea/nimble/Error;
    :try_start_5
    throw v17
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1476
    .end local v7    # "errMessage":Ljava/lang/String;
    .end local v9    # "errorObject":Lorg/json/JSONObject;
    .end local v17    # "parseError":Lcom/ea/nimble/Error;
    .restart local v16    # "parseError":Lcom/ea/nimble/Error;
    :cond_7
    :try_start_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-gtz v20, :cond_8

    .line 1478
    const-string v20, "No invitations found for your selected criteria"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1502
    .end local v11    # "friendsArray":Lorg/json/JSONArray;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1482
    .restart local v11    # "friendsArray":Lorg/json/JSONArray;
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_8
    if-eqz v11, :cond_4

    .line 1483
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 1485
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_4

    .line 1487
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1488
    .local v12, "friendsObj":Lorg/json/JSONObject;
    if-eqz v12, :cond_9

    .line 1490
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->createNimbleUserFromGosJson(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;

    move-result-object v15

    .line 1492
    .local v15, "nimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {v15}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_9

    invoke-virtual {v15}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 1494
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1485
    .end local v15    # "nimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1512
    .end local v3    # "count":I
    .end local v11    # "friendsArray":Lorg/json/JSONArray;
    .end local v12    # "friendsObj":Lorg/json/JSONObject;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_a
    const-string v7, "Generic Server error when retrieving GOS Friends."

    .line 1513
    .restart local v7    # "errMessage":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    new-instance v16, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v16    # "parseError":Lcom/ea/nimble/Error;
    sget-object v20, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1515
    .restart local v16    # "parseError":Lcom/ea/nimble/Error;
    throw v16
.end method

.method private parseUserSearchByDisplayNameResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1658
    .local v15, "responseData":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 1661
    .local v11, "parseError":Lcom/ea/nimble/Error;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 1663
    :cond_0
    new-instance v19, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v20

    .line 1664
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v19

    .line 1675
    :cond_1
    new-instance v19, Ljava/util/Scanner;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v20, "\\A"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    .line 1676
    .local v16, "s":Ljava/util/Scanner;
    const-string v4, ""

    .line 1677
    .local v4, "data":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1678
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 1681
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    .line 1683
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v17, "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 1690
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v10, "jsonObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 1695
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1697
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1698
    .local v7, "errorObject":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1700
    .local v8, "errorString":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1701
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 1703
    new-instance v12, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1706
    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    .local v12, "parseError":Lcom/ea/nimble/Error;
    :try_start_1
    throw v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1758
    .end local v7    # "errorObject":Lorg/json/JSONObject;
    .end local v8    # "errorString":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 1760
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v12    # "parseError":Lcom/ea/nimble/Error;
    .local v5, "e":Lorg/json/JSONException;
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    :goto_0
    const-string v19, "Exception when parsing JSON response. Error: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1761
    new-instance v11, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1762
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    throw v11

    .line 1709
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v7    # "errorObject":Lorg/json/JSONObject;
    .restart local v8    # "errorString":Ljava/lang/String;
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_3
    const/16 v17, 0x0

    .line 1776
    .end local v7    # "errorObject":Lorg/json/JSONObject;
    .end local v8    # "errorString":Ljava/lang/String;
    .end local v17    # "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_4
    :goto_1
    return-object v17

    .line 1713
    .restart local v17    # "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_5
    :try_start_2
    const-string v19, "personas"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1715
    .local v14, "personasObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_8

    .line 1717
    const-string v19, "persona"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1718
    .local v13, "personasArray":Lorg/json/JSONArray;
    if-eqz v13, :cond_7

    .line 1719
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 1721
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_4

    .line 1723
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1724
    .local v9, "jsonNimbleUser":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 1726
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->createNimbleUserFromNexusJson(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;

    move-result-object v18

    .line 1728
    .local v18, "user":Lcom/ea/nimble/friends/NimbleUser;
    if-eqz v18, :cond_6

    .line 1730
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    .end local v18    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1739
    .end local v3    # "count":I
    .end local v9    # "jsonNimbleUser":Lorg/json/JSONObject;
    :cond_7
    const-string v6, "Search response indicates that no user was found with the display name prefix that you searched for."

    .line 1740
    .local v6, "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1758
    .end local v6    # "errMessage":Ljava/lang/String;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v13    # "personasArray":Lorg/json/JSONArray;
    .end local v14    # "personasObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1750
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    .restart local v14    # "personasObject":Lorg/json/JSONObject;
    :cond_8
    const-string v6, "Unable to parse response from server - no personas object found"

    .line 1751
    .restart local v6    # "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    new-instance v12, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v6}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1753
    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    .restart local v12    # "parseError":Lcom/ea/nimble/Error;
    :try_start_3
    throw v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1768
    .end local v6    # "errMessage":Ljava/lang/String;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v12    # "parseError":Lcom/ea/nimble/Error;
    .end local v14    # "personasObject":Lorg/json/JSONObject;
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    :cond_9
    const-string v6, "Generic Server error when retrieving search user response."

    .line 1769
    .restart local v6    # "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1770
    new-instance v11, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v11, v0, v6}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1771
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    throw v11
.end method

.method private parseUserSearchByEmailResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1530
    .local v15, "responseData":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 1533
    .local v11, "parseError":Lcom/ea/nimble/Error;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 1535
    :cond_0
    new-instance v19, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v20

    .line 1536
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v19

    .line 1547
    :cond_1
    new-instance v19, Ljava/util/Scanner;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v20, "\\A"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    .line 1548
    .local v16, "s":Ljava/util/Scanner;
    const-string v4, ""

    .line 1549
    .local v4, "data":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1550
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 1553
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    .line 1555
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    .local v17, "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 1562
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v10, "jsonObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 1567
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1569
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1570
    .local v7, "errorObject":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1572
    .local v8, "errorString":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1573
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 1575
    new-instance v12, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1578
    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    .local v12, "parseError":Lcom/ea/nimble/Error;
    :try_start_1
    throw v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1630
    .end local v7    # "errorObject":Lorg/json/JSONObject;
    .end local v8    # "errorString":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 1632
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v12    # "parseError":Lcom/ea/nimble/Error;
    .local v5, "e":Lorg/json/JSONException;
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    :goto_0
    const-string v19, "Exception when parsing JSON response. Error: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    new-instance v11, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1634
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    throw v11

    .line 1581
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v7    # "errorObject":Lorg/json/JSONObject;
    .restart local v8    # "errorString":Ljava/lang/String;
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_3
    const/16 v17, 0x0

    .line 1648
    .end local v7    # "errorObject":Lorg/json/JSONObject;
    .end local v8    # "errorString":Ljava/lang/String;
    .end local v17    # "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_4
    :goto_1
    return-object v17

    .line 1585
    .restart local v17    # "searchResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_5
    :try_start_2
    const-string v19, "pids"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1587
    .local v14, "pidsObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_8

    .line 1589
    const-string v19, "pid"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1590
    .local v13, "pidArray":Lorg/json/JSONArray;
    if-eqz v13, :cond_7

    .line 1591
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 1593
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_4

    .line 1595
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1596
    .local v9, "jsonNimbleUser":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 1598
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->createNimbleUserFromNexusJson(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;

    move-result-object v18

    .line 1600
    .local v18, "user":Lcom/ea/nimble/friends/NimbleUser;
    if-eqz v18, :cond_6

    .line 1602
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .end local v18    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1611
    .end local v3    # "count":I
    .end local v9    # "jsonNimbleUser":Lorg/json/JSONObject;
    :cond_7
    const-string v6, "Search response indicates that no user was found with the email address that you searched for."

    .line 1612
    .local v6, "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1630
    .end local v6    # "errMessage":Ljava/lang/String;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v13    # "pidArray":Lorg/json/JSONArray;
    .end local v14    # "pidsObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1622
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    .restart local v14    # "pidsObject":Lorg/json/JSONObject;
    :cond_8
    const-string v6, "Unable to parse response from server - no pids object found"

    .line 1623
    .restart local v6    # "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1624
    new-instance v12, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v6}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1625
    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    .restart local v12    # "parseError":Lcom/ea/nimble/Error;
    :try_start_3
    throw v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1640
    .end local v6    # "errMessage":Ljava/lang/String;
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v12    # "parseError":Lcom/ea/nimble/Error;
    .end local v14    # "pidsObject":Lorg/json/JSONObject;
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    :cond_9
    const-string v6, "Generic Server error when retrieving search user response."

    .line 1641
    .restart local v6    # "errMessage":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    new-instance v11, Lcom/ea/nimble/friends/NimbleFriendsError;

    .end local v11    # "parseError":Lcom/ea/nimble/Error;
    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v19

    invoke-direct {v11, v0, v6}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 1643
    .restart local v11    # "parseError":Lcom/ea/nimble/Error;
    throw v11
.end method

.method private processInivtationListRequest(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 7
    .param p1, "apiUri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    .line 476
    const-string v1, ""

    .line 478
    .local v1, "message":Ljava/lang/String;
    const-string v5, "com.ea.nimble.identity"

    invoke-direct {p0, v5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 480
    const-string v1, "Unable to process request because NimbleIdentity is not available"

    .line 481
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p2, v5, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 527
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v5, "com.ea.nimble.identity"

    invoke-static {v5}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 489
    .local v0, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    const-string v5, "origin"

    invoke-interface {v0, v5}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    .line 490
    .local v4, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    const/4 v3, 0x0

    .line 492
    .local v3, "pid":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 494
    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 499
    :cond_2
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v6, "Origin PID for the current user is not available."

    invoke-direct {p0, p2, v5, v6}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_3
    move-object v2, v3

    .line 508
    .local v2, "nucleusId":Ljava/lang/String;
    const-string v5, "origin"

    invoke-interface {v0, v5}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v5

    new-instance v6, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;

    invoke-direct {v6, p0, p2, v2, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method

.method private processRespondToFriendInvitationRequest(ZLjava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 11
    .param p1, "acceptRequest"    # Z
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 420
    const-string v7, ""

    .line 422
    .local v7, "message":Ljava/lang/String;
    const-string v0, "com.ea.nimble.identity"

    invoke-direct {p0, v0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const-string v7, "Unable to process request for responding to friend invitation because NimbleIdentity is not available"

    .line 425
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v7, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p3, v0, v7}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 431
    :cond_0
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 433
    .local v6, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    const-string v0, "origin"

    invoke-interface {v6, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v9

    .line 434
    .local v9, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    const/4 v8, 0x0

    .line 436
    .local v8, "pid":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 438
    invoke-virtual {v9}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v8

    .line 441
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 443
    :cond_2
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "Origin PID for the current user is not available."

    invoke-direct {p0, p3, v0, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    move-object v4, v8

    .line 452
    .local v4, "nucleusId":Ljava/lang/String;
    const-string v0, "origin"

    invoke-interface {v6, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v10

    new-instance v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$2;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method

.method private processSearchUserRequest(Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 4
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .param p2, "criteriaType"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    .param p3, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    .line 533
    const-string v1, ""

    .line 535
    .local v1, "message":Ljava/lang/String;
    const-string v2, "com.ea.nimble.identity"

    invoke-direct {p0, v2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    const-string v1, "Unable to process request because NimbleIdentity is not available"

    .line 538
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p3, v2, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 565
    :goto_0
    return-void

    .line 543
    :cond_0
    const-string v2, "com.ea.nimble.identity"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 546
    .local v0, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    const-string v2, "origin"

    invoke-interface {v0, v2}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v2

    new-instance v3, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;)V

    invoke-interface {v2, v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method

.method private processSendFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 11
    .param p1, "friendId"    # Ljava/lang/String;
    .param p2, "invitationComment"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    .line 363
    const-string v7, ""

    .line 365
    .local v7, "message":Ljava/lang/String;
    const-string v0, "com.ea.nimble.identity"

    invoke-direct {p0, v0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v7, "Unable to send friend request because NimbleIdentity is not available"

    .line 368
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v7, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p3, v0, v7}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 376
    .local v6, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    const-string v0, "origin"

    invoke-interface {v6, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v9

    .line 377
    .local v9, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    const/4 v8, 0x0

    .line 379
    .local v8, "pid":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 381
    invoke-virtual {v9}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v8

    .line 384
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 386
    :cond_2
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "Origin PID for the current user is not available."

    invoke-direct {p0, p3, v0, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_3
    move-object v3, v8

    .line 395
    .local v3, "nucleusId":Ljava/lang/String;
    const-string v0, "origin"

    invoke-interface {v6, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v10

    new-instance v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$1;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$1;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method

.method private sendFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 6
    .param p1, "nucleusId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "friendId"    # Ljava/lang/String;
    .param p4, "invitationComment"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    const/4 v5, 0x0

    .line 573
    const-string v1, ""

    .line 578
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->makeFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)Lcom/ea/nimble/HttpRequest;

    move-result-object v2

    .line 579
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    if-nez v2, :cond_0

    .line 581
    const-string v1, "Failed to create HTTP Request for sending friend invitation"

    .line 583
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p5, v3, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 631
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 590
    .restart local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;

    invoke-direct {v4, p0, p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    invoke-interface {v3, v2, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p5, v3, v4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendGetFriendInvitationListRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 6
    .param p1, "nucleusId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "apiUri"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v5, 0x0

    .line 704
    const-string v1, ""

    .line 709
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->makeGetFriendInvitationListRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;

    move-result-object v2

    .line 710
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    if-nez v2, :cond_0

    .line 712
    const-string v1, "Failed to create HTTP Request for retrieving outbound friend invitation list"

    .line 714
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p4, v3, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 786
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 721
    .restart local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;

    invoke-direct {v4, p0, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    invoke-interface {v3, v2, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4, v3, v4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRespondToFriendInvitationRequest(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 6
    .param p1, "acceptRequest"    # Z
    .param p2, "nucleusId"    # Ljava/lang/String;
    .param p3, "friendId"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    const/4 v5, 0x0

    .line 639
    const-string v1, ""

    .line 644
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->makeRespondToFriendInvitationRequest(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;

    move-result-object v2

    .line 645
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    if-nez v2, :cond_0

    .line 647
    const-string v1, "Failed to create HTTP Request for respoding to friend invitation"

    .line 649
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p5, v3, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 697
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 656
    .restart local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$6;

    invoke-direct {v4, p0, p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$6;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    invoke-interface {v3, v2, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p5, v3, v4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeFriendInvitationCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSearchUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 6
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "searchCriteria"    # Ljava/lang/String;
    .param p4, "criteriaType"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    .param p5, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v5, 0x0

    .line 798
    const-string v1, ""

    .line 803
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->makeSearchUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;)Lcom/ea/nimble/HttpRequest;

    move-result-object v2

    .line 805
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    if-nez v2, :cond_0

    .line 807
    const-string v1, "Failed to create HTTP Request for user search"

    .line 808
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p5, v3, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 887
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 815
    .restart local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$8;

    invoke-direct {v4, p0, p4, p5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$8;-><init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    invoke-interface {v3, v2, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing response for user search by email or displayName request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {p0, p5, v3, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->invokeUserSearchCallbackWithCode(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptFriendInvitation(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 2
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p2, :cond_0

    .line 199
    const-string v0, "Cannot process acceptFriendInvitation request because callback is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v0, "Request: acceptFriendInvitation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processRespondToFriendInvitationRequest(ZLjava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "Component cleanup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public declineFriendInvitation(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 3
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    const/4 v2, 0x0

    .line 211
    if-nez p2, :cond_0

    .line 213
    const-string v0, "Cannot process declineFriendInvitation request because callback is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "Request: declineFriendInvitation"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0, v2, p1, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processRespondToFriendInvitationRequest(ZLjava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "com.ea.nimble.friends.originfriendsservice"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "NimbleOriginFriendsService"

    return-object v0
.end method

.method public listFriendInvitationsReceived(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 169
    const-string v0, "Cannot process listFriendInvitationReceived request because callback is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "Request: listFriendInvitationReceived"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const-string v0, "/friends/2/users/%s/invitations/inbound"

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processInivtationListRequest(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method

.method public listFriendInvitationsSent(Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 153
    const-string v0, "Cannot process listFriendInvitationSent request because callback is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "Request: listFriendInvitationSent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string v0, "/friends/2/users/%s/invitations/outbound"

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processInivtationListRequest(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "Component restore"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "Component resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public searchUserByDisplayName(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 3
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p2, :cond_0

    .line 140
    const-string v0, "Cannot process searchUserByDisplayName request because callback is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "searchUserByDisplayName API called with namePrefix = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->DISPLAY_NAME:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    invoke-direct {p0, p1, v0, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processSearchUserRequest(Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method

.method public searchUserByEmail(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p2, :cond_0

    .line 126
    const-string v0, "Cannot process searchUserByEmail request because callback is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "searchUserByEmail API called with email = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->EMAIL:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    invoke-direct {p0, p1, v0, p2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processSearchUserRequest(Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method

.method public sendFriendInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 2
    .param p1, "friendPid"    # Ljava/lang/String;
    .param p2, "invitationComment"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    .prologue
    const/4 v1, 0x0

    .line 184
    if-nez p3, :cond_0

    .line 186
    const-string v0, "Cannot process sendFriendInvitation request because callback is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "Request: sendFriendInvitation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processSendFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    goto :goto_0
.end method

.method public sendInvitationOverEmail(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 9
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 230
    :cond_0
    const-string v1, "Target user emails is null or empty. Cannot send email invite."

    .line 231
    .local v1, "errMessage":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    if-eqz p4, :cond_1

    .line 235
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_NO_TARGETS_PROVIDED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {v2, v5, v1}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 236
    .local v2, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-interface {p4, v8, v2}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    .line 291
    .end local v1    # "errMessage":Ljava/lang/String;
    .end local v2    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    const/4 v4, 0x0

    .line 245
    .local v4, "receipts":[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 248
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "receipts":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 252
    .restart local v4    # "receipts":[Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    .line 253
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 255
    :cond_4
    const-string p2, "Please accept my friend invitation"

    .line 259
    :cond_5
    if-eqz p3, :cond_6

    .line 260
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_7

    .line 262
    :cond_6
    const-string p3, "Hi, I\'ll appreciate if you can accept my friend invitation."

    .line 266
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v5, "message/rfc822"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "Send mail using:"

    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    sget v7, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->EMAIL_REQUEST_CODE:I

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_8
    if-eqz p4, :cond_1

    .line 289
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p4, v5, v6}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v3

    .line 277
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "Can not send email on this device"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-eqz p4, :cond_8

    .line 280
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_EMAIL_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v6, "Email is not available on this device"

    invoke-direct {v2, v5, v6}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 281
    .restart local v2    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-interface {p4, v8, v2}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method public sendInvitationOverSMS(Ljava/util/ArrayList;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 10
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 302
    :cond_0
    const-string v0, "Target phone numbers is null or empty. Cannot send SMS invite."

    .line 303
    .local v0, "errMessage":Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0, v0, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-eqz p3, :cond_1

    .line 307
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v6, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_NO_TARGETS_PROVIDED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-direct {v1, v6, v0}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 308
    .local v1, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-interface {p3, v9, v1}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    .line 356
    .end local v0    # "errMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v4, "receipts":Ljava/lang/StringBuilder;
    const-string v6, "smsto:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, "iter":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    .end local v3    # "iter":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 328
    if-eqz p2, :cond_4

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_5

    .line 331
    :cond_4
    const-string p2, "Hi, I\'ll appreciate if you can accept my friend invitation."

    .line 334
    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    .local v5, "smsIntent":Landroid/content/Intent;
    const-string v6, "sms_body"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "Send sms using:"

    invoke-static {v5, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    sget v8, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->SMS_REQUEST_CODE:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_6
    if-eqz p3, :cond_1

    .line 354
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p3, v6, v7}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 342
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Can not send sms on this device"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    if-eqz p3, :cond_6

    .line 345
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v6, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v7, "Sms is not available on this device"

    invoke-direct {v1, v6, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 346
    .restart local v1    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-interface {p3, v9, v1}, Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;->onCallback(ZLcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "Component setup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "Component suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected teardown()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Component teardown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method
