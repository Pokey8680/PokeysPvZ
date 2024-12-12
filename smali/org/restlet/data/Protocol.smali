.class public final Lorg/restlet/data/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field public static final AJP:Lorg/restlet/data/Protocol;

.field public static final ALL:Lorg/restlet/data/Protocol;

.field public static final CLAP:Lorg/restlet/data/Protocol;

.field public static final FILE:Lorg/restlet/data/Protocol;

.field public static final FTP:Lorg/restlet/data/Protocol;

.field public static final HTTP:Lorg/restlet/data/Protocol;

.field public static final HTTPS:Lorg/restlet/data/Protocol;

.field public static final JAR:Lorg/restlet/data/Protocol;

.field public static final JDBC:Lorg/restlet/data/Protocol;

.field public static final POP:Lorg/restlet/data/Protocol;

.field public static final POPS:Lorg/restlet/data/Protocol;

.field public static final RIAP:Lorg/restlet/data/Protocol;

.field public static final SDC:Lorg/restlet/data/Protocol;

.field public static final SIP:Lorg/restlet/data/Protocol;

.field public static final SIPS:Lorg/restlet/data/Protocol;

.field public static final SMTP:Lorg/restlet/data/Protocol;

.field public static final SMTPS:Lorg/restlet/data/Protocol;

.field public static final UNKNOWN_PORT:I = -0x1

.field public static final WAR:Lorg/restlet/data/Protocol;

.field public static final ZIP:Lorg/restlet/data/Protocol;


# instance fields
.field private final confidential:Z

.field private final defaultPort:I

.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private volatile schemeName:Ljava/lang/String;

.field private final technicalName:Ljava/lang/String;

.field private volatile version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 50
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "ajp"

    const-string v2, "AJP"

    const-string v3, "Apache Jakarta Protocol"

    const/16 v6, 0x1f49

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->AJP:Lorg/restlet/data/Protocol;

    .line 54
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "all"

    const-string v2, "ALL"

    const-string v3, "Wildcard for all protocols"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->ALL:Lorg/restlet/data/Protocol;

    .line 67
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "clap"

    const-string v2, "CLAP"

    const-string v3, "Class Loader Access Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    .line 80
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "file"

    const-string v2, "FILE"

    const-string v3, "Local File System Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    .line 84
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "ftp"

    const-string v2, "FTP"

    const-string v3, "File Transfer Protocol"

    const/16 v6, 0x15

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->FTP:Lorg/restlet/data/Protocol;

    .line 88
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "http"

    const-string v8, "HTTP"

    const-string v9, "HyperText Transport Protocol"

    const/16 v10, 0x50

    const-string v11, "1.1"

    invoke-direct/range {v6 .. v11}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    .line 92
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "https"

    const-string v8, "HTTPS"

    const-string v9, "HTTP"

    const-string v10, "HyperText Transport Protocol (Secure)"

    const/16 v11, 0x1bb

    const-string v13, "1.1"

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    .line 103
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "jar"

    const-string v2, "JAR"

    const-string v3, "Java ARchive"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    .line 107
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "jdbc"

    const-string v2, "JDBC"

    const-string v3, "Java DataBase Connectivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->JDBC:Lorg/restlet/data/Protocol;

    .line 111
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "pop"

    const-string v2, "POP"

    const-string v3, "Post Office Protocol"

    const/16 v6, 0x6e

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->POP:Lorg/restlet/data/Protocol;

    .line 115
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "pops"

    const-string v8, "POPS"

    const-string v9, "Post Office Protocol (Secure)"

    const/16 v10, 0x3e3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v6, Lorg/restlet/data/Protocol;->POPS:Lorg/restlet/data/Protocol;

    .line 129
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "riap"

    const-string v2, "RIAP"

    const-string v3, "Restlet Internal Access Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    .line 138
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "sdc"

    const-string v2, "SDC"

    const-string v3, "Secure Data Connector Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->SDC:Lorg/restlet/data/Protocol;

    .line 142
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "sip"

    const-string v8, "SIP"

    const-string v9, "Session Initiation Protocol"

    const/16 v10, 0x13c4

    const-string v11, "2.0"

    invoke-direct/range {v6 .. v11}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/restlet/data/Protocol;->SIP:Lorg/restlet/data/Protocol;

    .line 146
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "sips"

    const-string v8, "SIPS"

    const-string v9, "SIP"

    const-string v10, "Session Initiation Protocol (Secure)"

    const/16 v11, 0x13c5

    const-string v13, "2.0"

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lorg/restlet/data/Protocol;->SIPS:Lorg/restlet/data/Protocol;

    .line 150
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "smtp"

    const-string v2, "SMTP"

    const-string v3, "Simple Mail Transfer Protocol"

    const/16 v6, 0x19

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Protocol;->SMTP:Lorg/restlet/data/Protocol;

    .line 154
    new-instance v6, Lorg/restlet/data/Protocol;

    const-string v7, "smtps"

    const-string v8, "SMTPS"

    const-string v9, "Simple Mail Transfer Protocol (Secure)"

    const/16 v10, 0x1d1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v6, Lorg/restlet/data/Protocol;->SMTPS:Lorg/restlet/data/Protocol;

    .line 158
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "war"

    const-string v2, "WAR"

    const-string v3, "Web Archive Access Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->WAR:Lorg/restlet/data/Protocol;

    .line 168
    new-instance v0, Lorg/restlet/data/Protocol;

    const-string v1, "zip"

    const-string v2, "ZIP"

    const-string v3, "Zip Archive Access Protocol"

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/restlet/data/Protocol;->ZIP:Lorg/restlet/data/Protocol;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "schemeName"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I

    .prologue
    .line 293
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 294
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 354
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "confidential"    # Z

    .prologue
    .line 312
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 8
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "confidential"    # Z
    .param p6, "version"    # Ljava/lang/String;

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "technicalName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "defaultPort"    # I
    .param p6, "confidential"    # Z
    .param p7, "version"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p2, p0, Lorg/restlet/data/Protocol;->name:Ljava/lang/String;

    .line 378
    iput-object p4, p0, Lorg/restlet/data/Protocol;->description:Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lorg/restlet/data/Protocol;->schemeName:Ljava/lang/String;

    .line 380
    iput-object p3, p0, Lorg/restlet/data/Protocol;->technicalName:Ljava/lang/String;

    .line 381
    iput p5, p0, Lorg/restlet/data/Protocol;->defaultPort:I

    .line 382
    iput-boolean p6, p0, Lorg/restlet/data/Protocol;->confidential:Z

    .line 383
    iput-object p7, p0, Lorg/restlet/data/Protocol;->version:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "result":Lorg/restlet/data/Protocol;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    sget-object v1, Lorg/restlet/data/Protocol;->AJP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    sget-object v0, Lorg/restlet/data/Protocol;->AJP:Lorg/restlet/data/Protocol;

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    sget-object v1, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    sget-object v0, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 187
    :cond_2
    sget-object v1, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    sget-object v0, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 189
    :cond_3
    sget-object v1, Lorg/restlet/data/Protocol;->FTP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    sget-object v0, Lorg/restlet/data/Protocol;->FTP:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 191
    :cond_4
    sget-object v1, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    sget-object v0, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 193
    :cond_5
    sget-object v1, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    sget-object v0, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 195
    :cond_6
    sget-object v1, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    sget-object v0, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 197
    :cond_7
    sget-object v1, Lorg/restlet/data/Protocol;->JDBC:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    sget-object v0, Lorg/restlet/data/Protocol;->JDBC:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 199
    :cond_8
    sget-object v1, Lorg/restlet/data/Protocol;->POP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    sget-object v0, Lorg/restlet/data/Protocol;->POP:Lorg/restlet/data/Protocol;

    goto :goto_0

    .line 201
    :cond_9
    sget-object v1, Lorg/restlet/data/Protocol;->POPS:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 202
    sget-object v0, Lorg/restlet/data/Protocol;->POPS:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 203
    :cond_a
    sget-object v1, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 204
    sget-object v0, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 205
    :cond_b
    sget-object v1, Lorg/restlet/data/Protocol;->SMTP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 206
    sget-object v0, Lorg/restlet/data/Protocol;->SMTP:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 207
    :cond_c
    sget-object v1, Lorg/restlet/data/Protocol;->SMTPS:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    sget-object v0, Lorg/restlet/data/Protocol;->SMTPS:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 209
    :cond_d
    sget-object v1, Lorg/restlet/data/Protocol;->SIP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 210
    sget-object v0, Lorg/restlet/data/Protocol;->SIP:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 211
    :cond_e
    sget-object v1, Lorg/restlet/data/Protocol;->SIPS:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 212
    sget-object v0, Lorg/restlet/data/Protocol;->SIPS:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 213
    :cond_f
    sget-object v1, Lorg/restlet/data/Protocol;->WAR:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 214
    sget-object v0, Lorg/restlet/data/Protocol;->WAR:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 215
    :cond_10
    sget-object v1, Lorg/restlet/data/Protocol;->ZIP:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 216
    sget-object v0, Lorg/restlet/data/Protocol;->ZIP:Lorg/restlet/data/Protocol;

    goto/16 :goto_0

    .line 218
    :cond_11
    new-instance v0, Lorg/restlet/data/Protocol;

    .end local v0    # "result":Lorg/restlet/data/Protocol;
    invoke-direct {v0, p0}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Lorg/restlet/data/Protocol;
    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Protocol;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v8

    .line 238
    .local v8, "result":Lorg/restlet/data/Protocol;
    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v0, Lorg/restlet/data/Protocol;

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getTechnicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v5

    invoke-virtual {v8}, Lorg/restlet/data/Protocol;->isConfidential()Z

    move-result v6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 244
    .end local v8    # "result":Lorg/restlet/data/Protocol;
    .local v0, "result":Lorg/restlet/data/Protocol;
    :goto_0
    return-object v0

    .end local v0    # "result":Lorg/restlet/data/Protocol;
    .restart local v8    # "result":Lorg/restlet/data/Protocol;
    :cond_0
    move-object v0, v8

    .end local v8    # "result":Lorg/restlet/data/Protocol;
    .restart local v0    # "result":Lorg/restlet/data/Protocol;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 389
    instance-of v0, p1, Lorg/restlet/data/Protocol;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/restlet/data/Protocol;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultPort()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lorg/restlet/data/Protocol;->defaultPort:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/restlet/data/Protocol;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/restlet/data/Protocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/restlet/data/Protocol;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/restlet/data/Protocol;->technicalName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/restlet/data/Protocol;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/restlet/data/Protocol;->confidential:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
