.class Lorg/restlet/representation/ObjectRepresentation$1;
.super Ljava/io/ObjectInputStream;
.source "ObjectRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/representation/ObjectRepresentation;-><init>(Lorg/restlet/representation/Representation;Ljava/lang/ClassLoader;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/representation/ObjectRepresentation;

.field final synthetic val$classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/restlet/representation/ObjectRepresentation;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 181
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation$1;, "Lorg/restlet/representation/ObjectRepresentation.1;"
    iput-object p1, p0, Lorg/restlet/representation/ObjectRepresentation$1;->this$0:Lorg/restlet/representation/ObjectRepresentation;

    iput-object p3, p0, Lorg/restlet/representation/ObjectRepresentation$1;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation$1;, "Lorg/restlet/representation/ObjectRepresentation.1;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/restlet/representation/ObjectRepresentation$1;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
