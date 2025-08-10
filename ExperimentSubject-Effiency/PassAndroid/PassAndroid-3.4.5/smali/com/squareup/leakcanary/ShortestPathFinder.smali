.class final Lcom/squareup/leakcanary/ShortestPathFinder;
.super Ljava/lang/Object;
.source "ShortestPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    }
.end annotation


# instance fields
.field private canIgnoreStrings:Z

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final toVisitIfNoPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitIfNoPathSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    .line 66
    return-void
.end method

.method private checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z
    .locals 2
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearState()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 125
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 127
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 128
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 129
    return-void
.end method

.method private enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V
    .locals 7
    .param p1, "exclusion"    # Lcom/squareup/leakcanary/Exclusion;
    .param p2, "parent"    # Lcom/squareup/leakcanary/LeakNode;
    .param p3, "child"    # Lcom/squareup/haha/perflib/Instance;
    .param p4, "referenceName"    # Ljava/lang/String;
    .param p5, "referenceType"    # Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .prologue
    .line 284
    if-nez p3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveWrapper(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    if-nez p1, :cond_4

    const/4 v6, 0x1

    .line 295
    .local v6, "visitNow":Z
    :goto_1
    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    :cond_2
    iget-boolean v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 305
    .local v0, "childNode":Lcom/squareup/leakcanary/LeakNode;
    if-eqz v6, :cond_5

    .line 306
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v0    # "childNode":Lcom/squareup/leakcanary/LeakNode;
    .end local v6    # "visitNow":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 309
    .restart local v0    # "childNode":Lcom/squareup/leakcanary/LeakNode;
    .restart local v6    # "visitNow":Z
    :cond_5
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 13
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/RootObj;

    .line 133
    .local v3, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    sget-object v0, Lcom/squareup/leakcanary/ShortestPathFinder$1;->$SwitchMap$com$squareup$haha$perflib$RootType:[I

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown root type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1
    invoke-static {v3}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v10

    .line 136
    .local v10, "thread":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v10}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "threadName":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->threadNames:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/Exclusion;

    .line 138
    .local v1, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v0, :cond_0

    :cond_1
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .end local v1    # "params":Lcom/squareup/leakcanary/Exclusion;
    .end local v10    # "thread":Lcom/squareup/haha/perflib/Instance;
    .end local v11    # "threadName":Ljava/lang/String;
    :pswitch_2
    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v3

    move-object v8, v2

    move-object v9, v2

    .line 166
    invoke-direct/range {v4 .. v9}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .line 172
    .end local v3    # "rootObj":Lcom/squareup/haha/perflib/RootObj;
    :cond_2
    return-void

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isString(Lcom/squareup/haha/perflib/Instance;)Z
    .locals 2
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 10
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 271
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v6, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 272
    .local v6, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v7

    .line 273
    .local v7, "arrayType":Lcom/squareup/haha/perflib/Type;
    sget-object v0, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v7, v0, :cond_0

    .line 274
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v9

    .line 275
    .local v9, "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 276
    aget-object v3, v9, v8

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 277
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 275
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 280
    .end local v3    # "child":Lcom/squareup/haha/perflib/Instance;
    .end local v8    # "i":I
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 16
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 228
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v9, Lcom/squareup/haha/perflib/ClassInstance;

    .line 229
    .local v9, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 230
    .local v12, "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v14

    .line 231
    .local v14, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    const/4 v7, 0x0

    .line 232
    .local v7, "classExclusion":Lcom/squareup/leakcanary/Exclusion;
    :goto_0
    if-eqz v14, :cond_3

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->classNames:Ljava/util/Map;

    invoke-virtual {v14}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/leakcanary/Exclusion;

    .line 234
    .local v13, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v13, :cond_1

    .line 236
    if-eqz v7, :cond_0

    iget-boolean v1, v7, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_1

    .line 237
    :cond_0
    move-object v7, v13

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->fieldNameByClassName:Ljava/util/Map;

    .line 241
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 242
    .local v8, "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    if-eqz v8, :cond_2

    .line 243
    invoke-interface {v12, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 245
    :cond_2
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v14

    .line 246
    goto :goto_0

    .line 248
    .end local v8    # "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    .end local v13    # "params":Lcom/squareup/leakcanary/Exclusion;
    :cond_3
    if-eqz v7, :cond_5

    iget-boolean v1, v7, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-eqz v1, :cond_5

    .line 268
    :cond_4
    return-void

    .line 252
    :cond_5
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 253
    .local v11, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    move-object v2, v7

    .line 254
    .local v2, "fieldExclusion":Lcom/squareup/leakcanary/Exclusion;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v10

    .line 255
    .local v10, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_6

    .line 258
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 259
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "fieldName":Ljava/lang/String;
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/leakcanary/Exclusion;

    .line 262
    .restart local v13    # "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v13, :cond_8

    if-eqz v2, :cond_7

    iget-boolean v1, v13, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v2, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_8

    .line 264
    :cond_7
    move-object v2, v13

    .line 266
    :cond_8
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_1
.end method

.method private visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 18
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 198
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v12, Lcom/squareup/haha/perflib/ClassObj;

    .line 199
    .local v12, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->staticFieldNameByClassName:Ljava/util/Map;

    .line 200
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 201
    .local v15, "ignoredStaticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 202
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/Field;

    .line 203
    .local v14, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_0

    .line 206
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "fieldName":Ljava/lang/String;
    const-string v1, "$staticOverhead"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 211
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    const/16 v16, 0x1

    .line 212
    .local v16, "visit":Z
    if-eqz v15, :cond_1

    .line 213
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/Exclusion;

    .line 214
    .local v2, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v2, :cond_1

    .line 215
    const/16 v16, 0x0

    .line 216
    iget-boolean v1, v2, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_1

    .line 217
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 221
    .end local v2    # "params":Lcom/squareup/leakcanary/Exclusion;
    :cond_1
    if-eqz v16, :cond_0

    .line 222
    const/4 v7, 0x0

    sget-object v11, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .line 225
    .end local v4    # "child":Lcom/squareup/haha/perflib/Instance;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v14    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v16    # "visit":Z
    :cond_2
    return-void
.end method

.method private visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 11
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v10, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v10, Lcom/squareup/haha/perflib/RootObj;

    .line 180
    .local v10, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v6

    .line 182
    .local v6, "child":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v3

    sget-object v4, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    if-ne v3, v4, :cond_1

    .line 183
    invoke-static {v10}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v2

    .line 186
    .local v2, "holder":Lcom/squareup/haha/perflib/Instance;
    const/4 v9, 0x0

    .line 187
    .local v9, "exclusion":Lcom/squareup/leakcanary/Exclusion;
    iget-object v3, p1, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    if-eqz v3, :cond_0

    .line 188
    iget-object v9, p1, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    .line 190
    :cond_0
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 191
    .local v0, "parent":Lcom/squareup/leakcanary/LeakNode;
    const-string v7, "<Java Local>"

    sget-object v8, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v3, p0

    move-object v4, v9

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 195
    .end local v0    # "parent":Lcom/squareup/leakcanary/LeakNode;
    .end local v2    # "holder":Lcom/squareup/haha/perflib/Instance;
    .end local v9    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :goto_0
    return-void

    :cond_1
    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v7, v1

    move-object v8, v1

    .line 193
    invoke-direct/range {v3 .. v8}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0
.end method


# virtual methods
.method findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    .locals 6
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/squareup/leakcanary/ShortestPathFinder;->clearState()V

    .line 80
    invoke-direct {p0, p2}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "excludingKnownLeaks":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 89
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 99
    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_2
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    if-ne v3, p2, :cond_6

    .line 100
    move-object v1, v2

    .line 120
    .end local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    :cond_2
    new-instance v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    invoke-direct {v3, v1, v0}, Lcom/squareup/leakcanary/ShortestPathFinder$Result;-><init>(Lcom/squareup/leakcanary/LeakNode;Z)V

    return-object v3

    .line 80
    .end local v0    # "excludingKnownLeaks":Z
    .end local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    .restart local v0    # "excludingKnownLeaks":Z
    .restart local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_4
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 92
    .restart local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    if-nez v3, :cond_5

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected node to have an exclusion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 104
    :cond_6
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v3, :cond_7

    .line 109
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 110
    :cond_7
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v3, :cond_8

    .line 111
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 112
    :cond_8
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassInstance;

    if-eqz v3, :cond_9

    .line 113
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 114
    :cond_9
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v3, :cond_a

    .line 115
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto/16 :goto_1

    .line 117
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
