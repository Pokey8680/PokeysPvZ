.class Lcom/ea/nimble/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ComponentManager$Stage;
    }
.end annotation


# instance fields
.field private m_components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_stage:Lcom/ea/nimble/ComponentManager$Stage;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 29
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 4

    .prologue
    .line 151
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    .line 152
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 151
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 154
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ea/nimble/Component;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 157
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->cleanup()V

    goto :goto_0

    .line 159
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 160
    return-void
.end method

.method getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    return-object v0
.end method

.method getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/Component;>;"
    iget-object v2, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ea/nimble/Component;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ea/nimble/Component;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/ea/nimble/Component;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/ea/nimble/Component;

    return-object v2
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Component"

    return-object v0
.end method

.method registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V
    .locals 4
    .param p1, "component"    # Lcom/ea/nimble/Component;
    .param p2, "componentId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string v1, "Cannot register component without valid componentId"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-nez p1, :cond_2

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to register invalid component with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 51
    .local v0, "existedComponent":Lcom/ea/nimble/Component;
    if-nez v0, :cond_6

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 67
    if-eqz v0, :cond_5

    .line 69
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->resume()V

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->cleanup()V

    .line 77
    :cond_4
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->teardown()V

    .line 80
    :cond_5
    invoke-virtual {p1}, Lcom/ea/nimble/Component;->setup()V

    .line 81
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/ea/nimble/Component;->restore()V

    .line 84
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/ea/nimble/Component;->suspend()V

    goto/16 :goto_0

    .line 57
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register module(overwrite): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method restore()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 122
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->restore()V

    goto :goto_0

    .line 124
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 125
    return-void
.end method

.method resume()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 144
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->resume()V

    goto :goto_0

    .line 146
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 147
    return-void
.end method

.method setup()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 113
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->setup()V

    goto :goto_0

    .line 115
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 116
    return-void
.end method

.method suspend()V
    .locals 4

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    .line 130
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 132
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ea/nimble/Component;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 135
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->suspend()V

    goto :goto_0

    .line 137
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 138
    return-void
.end method

.method teardown()V
    .locals 4

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    .line 165
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 167
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ea/nimble/Component;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    .line 170
    .local v0, "component":Lcom/ea/nimble/Component;
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->teardown()V

    goto :goto_0

    .line 172
    .end local v0    # "component":Lcom/ea/nimble/Component;
    :cond_0
    sget-object v2, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    .line 173
    return-void
.end method
