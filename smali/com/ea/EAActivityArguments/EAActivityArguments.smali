.class public Lcom/ea/EAActivityArguments/EAActivityArguments;
.super Ljava/lang/Object;
.source "EAActivityArguments.java"


# static fields
.field private static sArgv:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ea/EAActivityArguments/EAActivityArguments;->sArgv:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCommandLineArguments()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ea/EAActivityArguments/EAActivityArguments;->sArgv:[Ljava/lang/String;

    return-object v0
.end method

.method public static SetCommandLineArguments(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "extraBundle"    # Landroid/os/Bundle;

    .prologue
    .line 11
    if-eqz p0, :cond_0

    const-string v2, "argc"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    const-string v2, "argc"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14
    .local v0, "argc":I
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/ea/EAActivityArguments/EAActivityArguments;->sArgv:[Ljava/lang/String;

    .line 15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    sget-object v2, Lcom/ea/EAActivityArguments/EAActivityArguments;->sArgv:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "argc":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
