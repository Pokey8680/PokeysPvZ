.class final enum Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
.super Ljava/lang/Enum;
.source "NimbleOriginFriendsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UserSearchCriteria"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

.field public static final enum DISPLAY_NAME:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

.field public static final enum EMAIL:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->EMAIL:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    .line 60
    new-instance v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    const-string v1, "DISPLAY_NAME"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->DISPLAY_NAME:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    sget-object v1, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->EMAIL:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->DISPLAY_NAME:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->$VALUES:[Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->$VALUES:[Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    invoke-virtual {v0}, [Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    return-object v0
.end method
