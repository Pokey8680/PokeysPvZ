.class public Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;
.super Lcom/google/inject/HierarchyTraversalFilter;
.source "AnnotatedGuiceHierarchyTraversalFilter.java"


# instance fields
.field private classesContainingInjectionPointsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/google/inject/HierarchyTraversalFilter;

.field private hasHadInjectionPoints:Z

.field private mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/AnnotationDatabaseFinder;Lcom/google/inject/HierarchyTraversalFilter;)V
    .locals 2
    .param p1, "annotationDatabaseFinder"    # Lcom/google/inject/AnnotationDatabaseFinder;
    .param p2, "delegate"    # Lcom/google/inject/HierarchyTraversalFilter;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/inject/HierarchyTraversalFilter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 31
    iput-object p2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    .line 33
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    .line 34
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    .line 36
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getClassesContainingInjectionPointsSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 38
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find Annotation Database which should be output as part of annotation processing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllConstructors(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 12
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 187
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 189
    .local v5, "methodNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 190
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v6, "methodSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor<*>;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, "methodNameAndParamClasses":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "split":[Ljava/lang/String;
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    new-array v7, v9, [Ljava/lang/Class;

    .line 196
    .local v7, "paramClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_0

    .line 197
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    aget-object v11, v8, v2

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {p2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "methodNameAndParamClasses":Ljava/lang/String;
    .end local v7    # "paramClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "methodNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "methodSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    :cond_2
    return-object v6
.end method

.method public getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 7
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 89
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 91
    .local v3, "fieldNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 92
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v4, "fieldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "fieldNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "fieldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 13
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 135
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 137
    .local v6, "methodNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 138
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v7, "methodSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    :try_start_0
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    .local v5, "methodNameAndParamClasses":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "split":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v4, v9, v10

    .line 144
    .local v4, "methodName":Ljava/lang/String;
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    new-array v8, v10, [Ljava/lang/Class;

    .line 145
    .local v8, "paramClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v10, v9

    if-ge v2, v10, :cond_0

    .line 146
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v10

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {p2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "methodNameAndParamClasses":Ljava/lang/String;
    .end local v8    # "paramClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v6    # "methodNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "methodSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_2
    return-object v7
.end method

.method public isWorthScanning(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    .line 50
    iget-boolean v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 52
    :cond_0
    if-eqz p1, :cond_3

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iput-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorthScanningForConstructors(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    iget-boolean v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v3, :cond_1

    .line 165
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    if-eqz p2, :cond_0

    .line 167
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 168
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 172
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iput-boolean v2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 177
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v3, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-boolean v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v3, :cond_1

    .line 68
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 71
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 75
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    iput-boolean v2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 80
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v3, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-boolean v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    if-eqz p2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    .local v0, "classesContainingInjectionPointsForAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 119
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    iput-boolean v2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    move v1, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 124
    iget-object v3, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v3, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    .line 46
    return-void
.end method
