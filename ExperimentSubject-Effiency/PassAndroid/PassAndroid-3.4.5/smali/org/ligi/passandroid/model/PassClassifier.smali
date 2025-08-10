.class public Lorg/ligi/passandroid/model/PassClassifier;
.super Ljava/lang/Object;
.source "PassClassifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B!\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0004J\u0008\u0010\u001a\u001a\u00020\u0018H\u0016J\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/PassClassifier;",
        "",
        "topicByIdMap",
        "",
        "",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "(Ljava/util/Map;Lorg/ligi/passandroid/model/PassStore;)V",
        "getTopicByIdMap",
        "()Ljava/util/Map;",
        "getPassListByTopic",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "topic",
        "getTopic",
        "id",
        "default",
        "pass",
        "getTopicWithOffset",
        "offset",
        "",
        "getTopics",
        "",
        "moveToTopic",
        "",
        "newTopic",
        "processDataChange",
        "removePass",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final passStore:Lorg/ligi/passandroid/model/PassStore;

.field private final topicByIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/ligi/passandroid/model/PassStore;)V
    .locals 1
    .param p1, "topicByIdMap"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/ligi/passandroid/model/PassStore;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "topicByIdMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    iput-object p2, p0, Lorg/ligi/passandroid/model/PassClassifier;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-void
.end method


# virtual methods
.method public final getPassListByTopic(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "topic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v6, "topic"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    .line 75
    .local v0, "$receiver$iv":Ljava/util/Map;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 76
    .local v1, "destination$iv$iv":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 77
    .local v3, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v4, v3

    .line 27
    .local v4, "it":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v3    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v4    # "it":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 27
    nop

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 83
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .end local v1    # "destination$iv$iv":Ljava/util/Map;
    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 27
    .local v5, "item$iv$iv":Ljava/util/Map$Entry;
    iget-object v8, p0, Lorg/ligi/passandroid/model/PassClassifier;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v5    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_2
    check-cast v2, Ljava/util/List;

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v2, Ljava/lang/Iterable;

    .line 27
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public final getTopic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "default"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "default"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 44
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .line 40
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassClassifier;->processDataChange()V

    :cond_1
    move-object v0, p2

    .line 44
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "default"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ligi/passandroid/model/PassClassifier;->getTopic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTopicByIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getTopicWithOffset(Lorg/ligi/passandroid/model/pass/Pass;I)Ljava/lang/String;
    .locals 3
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassClassifier;->getTopics()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lorg/ligi/passandroid/model/PassClassifier;->getTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result v0

    .line 57
    .local v0, "indexOf":I
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassClassifier;->getTopics()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    add-int v2, v0, p2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public final getTopics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V
    .locals 2
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "newTopic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newTopic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassClassifier;->processDataChange()V

    .line 20
    return-void
.end method

.method public processDataChange()V
    .locals 11

    .prologue
    .line 8
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    .line 62
    .local v0, "$receiver$iv":Ljava/util/Map;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 63
    .local v1, "destination$iv$iv":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 64
    .local v4, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v5, v4

    .line 8
    .local v5, "it":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_0

    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 68
    .end local v4    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v5    # "it":Ljava/util/Map$Entry;
    :cond_2
    nop

    .line 8
    nop

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 70
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .end local v1    # "destination$iv$iv":Ljava/util/Map;
    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 8
    .local v6, "item$iv$iv":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v6    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_3
    move-object v7, v2

    .line 72
    check-cast v7, Ljava/util/List;

    .local v7, "topicsToRemove":Ljava/util/List;
    move-object v0, v7

    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 11
    .local v5, "it":Ljava/lang/String;
    iget-object v9, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    nop

    goto :goto_3

    .line 74
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/String;
    :cond_4
    nop

    .line 13
    iget-object v8, p0, Lorg/ligi/passandroid/model/PassClassifier;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v8}, Lorg/ligi/passandroid/model/PassStore;->notifyChange()V

    .line 14
    return-void
.end method

.method public final removePass(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/ligi/passandroid/model/PassClassifier;->topicByIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/PassClassifier;->processDataChange()V

    .line 50
    return-void
.end method
