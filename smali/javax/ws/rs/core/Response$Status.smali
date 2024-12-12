.class public final enum Ljavax/ws/rs/core/Response$Status;
.super Ljava/lang/Enum;
.source "Response.java"

# interfaces
.implements Ljavax/ws/rs/core/Response$StatusType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/ws/rs/core/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/ws/rs/core/Response$Status$Family;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/ws/rs/core/Response$Status;",
        ">;",
        "Ljavax/ws/rs/core/Response$StatusType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/ws/rs/core/Response$Status;

.field public static final enum ACCEPTED:Ljavax/ws/rs/core/Response$Status;

.field public static final enum BAD_REQUEST:Ljavax/ws/rs/core/Response$Status;

.field public static final enum CONFLICT:Ljavax/ws/rs/core/Response$Status;

.field public static final enum CREATED:Ljavax/ws/rs/core/Response$Status;

.field public static final enum FORBIDDEN:Ljavax/ws/rs/core/Response$Status;

.field public static final enum GONE:Ljavax/ws/rs/core/Response$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

.field public static final enum MOVED_PERMANENTLY:Ljavax/ws/rs/core/Response$Status;

.field public static final enum NOT_ACCEPTABLE:Ljavax/ws/rs/core/Response$Status;

.field public static final enum NOT_FOUND:Ljavax/ws/rs/core/Response$Status;

.field public static final enum NOT_MODIFIED:Ljavax/ws/rs/core/Response$Status;

.field public static final enum NO_CONTENT:Ljavax/ws/rs/core/Response$Status;

.field public static final enum OK:Ljavax/ws/rs/core/Response$Status;

.field public static final enum PRECONDITION_FAILED:Ljavax/ws/rs/core/Response$Status;

.field public static final enum SEE_OTHER:Ljavax/ws/rs/core/Response$Status;

.field public static final enum SERVICE_UNAVAILABLE:Ljavax/ws/rs/core/Response$Status;

.field public static final enum TEMPORARY_REDIRECT:Ljavax/ws/rs/core/Response$Status;

.field public static final enum UNAUTHORIZED:Ljavax/ws/rs/core/Response$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Ljavax/ws/rs/core/Response$Status;


# instance fields
.field private final code:I

.field private family:Ljavax/ws/rs/core/Response$Status$Family;

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->OK:Ljavax/ws/rs/core/Response$Status;

    .line 609
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->CREATED:Ljavax/ws/rs/core/Response$Status;

    .line 613
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v7, v2, v3}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->ACCEPTED:Ljavax/ws/rs/core/Response$Status;

    .line 617
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v8, v2, v3}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->NO_CONTENT:Ljavax/ws/rs/core/Response$Status;

    .line 621
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "MOVED_PERMANENTLY"

    const/16 v2, 0x12d

    const-string v3, "Moved Permanently"

    invoke-direct {v0, v1, v9, v2, v3}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->MOVED_PERMANENTLY:Ljavax/ws/rs/core/Response$Status;

    .line 625
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "SEE_OTHER"

    const/4 v2, 0x5

    const/16 v3, 0x12f

    const-string v4, "See Other"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->SEE_OTHER:Ljavax/ws/rs/core/Response$Status;

    .line 629
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "NOT_MODIFIED"

    const/4 v2, 0x6

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->NOT_MODIFIED:Ljavax/ws/rs/core/Response$Status;

    .line 633
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "TEMPORARY_REDIRECT"

    const/4 v2, 0x7

    const/16 v3, 0x133

    const-string v4, "Temporary Redirect"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->TEMPORARY_REDIRECT:Ljavax/ws/rs/core/Response$Status;

    .line 637
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x8

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->BAD_REQUEST:Ljavax/ws/rs/core/Response$Status;

    .line 641
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x9

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->UNAUTHORIZED:Ljavax/ws/rs/core/Response$Status;

    .line 645
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0xa

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->FORBIDDEN:Ljavax/ws/rs/core/Response$Status;

    .line 649
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0xb

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->NOT_FOUND:Ljavax/ws/rs/core/Response$Status;

    .line 653
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v2, 0xc

    const/16 v3, 0x196

    const-string v4, "Not Acceptable"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->NOT_ACCEPTABLE:Ljavax/ws/rs/core/Response$Status;

    .line 657
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "CONFLICT"

    const/16 v2, 0xd

    const/16 v3, 0x199

    const-string v4, "Conflict"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->CONFLICT:Ljavax/ws/rs/core/Response$Status;

    .line 661
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "GONE"

    const/16 v2, 0xe

    const/16 v3, 0x19a

    const-string v4, "Gone"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->GONE:Ljavax/ws/rs/core/Response$Status;

    .line 665
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v2, 0xf

    const/16 v3, 0x19c

    const-string v4, "Precondition Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->PRECONDITION_FAILED:Ljavax/ws/rs/core/Response$Status;

    .line 669
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v2, 0x10

    const/16 v3, 0x19f

    const-string v4, "Unsupported Media Type"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->UNSUPPORTED_MEDIA_TYPE:Ljavax/ws/rs/core/Response$Status;

    .line 673
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/16 v2, 0x11

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

    .line 677
    new-instance v0, Ljavax/ws/rs/core/Response$Status;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0x12

    const/16 v3, 0x1f7

    const-string v4, "Service Unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/ws/rs/core/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->SERVICE_UNAVAILABLE:Ljavax/ws/rs/core/Response$Status;

    .line 601
    const/16 v0, 0x13

    new-array v0, v0, [Ljavax/ws/rs/core/Response$Status;

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->OK:Ljavax/ws/rs/core/Response$Status;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->CREATED:Ljavax/ws/rs/core/Response$Status;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->ACCEPTED:Ljavax/ws/rs/core/Response$Status;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->NO_CONTENT:Ljavax/ws/rs/core/Response$Status;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/ws/rs/core/Response$Status;->MOVED_PERMANENTLY:Ljavax/ws/rs/core/Response$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->SEE_OTHER:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->NOT_MODIFIED:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->TEMPORARY_REDIRECT:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->BAD_REQUEST:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->UNAUTHORIZED:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->FORBIDDEN:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->NOT_FOUND:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->NOT_ACCEPTABLE:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->CONFLICT:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->GONE:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->PRECONDITION_FAILED:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->UNSUPPORTED_MEDIA_TYPE:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Ljavax/ws/rs/core/Response$Status;->SERVICE_UNAVAILABLE:Ljavax/ws/rs/core/Response$Status;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/ws/rs/core/Response$Status;->$VALUES:[Ljavax/ws/rs/core/Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p3, "statusCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 690
    iput p3, p0, Ljavax/ws/rs/core/Response$Status;->code:I

    .line 691
    iput-object p4, p0, Ljavax/ws/rs/core/Response$Status;->reason:Ljava/lang/String;

    .line 692
    iget v0, p0, Ljavax/ws/rs/core/Response$Status;->code:I

    div-int/lit8 v0, v0, 0x64

    packed-switch v0, :pswitch_data_0

    .line 698
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->OTHER:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    .line 700
    :goto_0
    return-void

    .line 693
    :pswitch_0
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->INFORMATIONAL:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    goto :goto_0

    .line 694
    :pswitch_1
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->SUCCESSFUL:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    goto :goto_0

    .line 695
    :pswitch_2
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->REDIRECTION:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    goto :goto_0

    .line 696
    :pswitch_3
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->CLIENT_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    goto :goto_0

    .line 697
    :pswitch_4
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->SERVER_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    iput-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static fromStatusCode(I)Ljavax/ws/rs/core/Response$Status;
    .locals 5
    .param p0, "statusCode"    # I

    .prologue
    .line 741
    invoke-static {}, Ljavax/ws/rs/core/Response$Status;->values()[Ljavax/ws/rs/core/Response$Status;

    move-result-object v0

    .local v0, "arr$":[Ljavax/ws/rs/core/Response$Status;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 742
    .local v3, "s":Ljavax/ws/rs/core/Response$Status;
    iget v4, v3, Ljavax/ws/rs/core/Response$Status;->code:I

    if-ne v4, p0, :cond_0

    .line 746
    .end local v3    # "s":Ljavax/ws/rs/core/Response$Status;
    :goto_1
    return-object v3

    .line 741
    .restart local v3    # "s":Ljavax/ws/rs/core/Response$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v3    # "s":Ljavax/ws/rs/core/Response$Status;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/Response$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 601
    const-class v0, Ljavax/ws/rs/core/Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/Response$Status;

    return-object v0
.end method

.method public static final values()[Ljavax/ws/rs/core/Response$Status;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Ljavax/ws/rs/core/Response$Status;->$VALUES:[Ljavax/ws/rs/core/Response$Status;

    invoke-virtual {v0}, [Ljavax/ws/rs/core/Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/ws/rs/core/Response$Status;

    return-object v0
.end method


# virtual methods
.method public getFamily()Ljavax/ws/rs/core/Response$Status$Family;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Ljavax/ws/rs/core/Response$Status;->family:Ljavax/ws/rs/core/Response$Status$Family;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response$Status;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Ljavax/ws/rs/core/Response$Status;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Ljavax/ws/rs/core/Response$Status;->reason:Ljava/lang/String;

    return-object v0
.end method
