.class public final Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;
.super Ljava/lang/Object;
.source "DisconnectListJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisconnectListJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisconnectListJsonAdapter.kt\ncom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n501#2:48\n486#2,6:49\n1360#3:55\n1429#3,3:56\n*E\n*S KotlinDebug\n*F\n+ 1 DisconnectListJsonAdapter.kt\ncom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter\n*L\n38#1:48\n38#1,6:49\n42#1:55\n42#1,3:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\t0\tH\u0002J@\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000420\u0010\u0008\u001a,\u0012\u0004\u0012\u00020\u0007\u0012\"\u0012 \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\t0\t0\u00040\tH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;",
        "",
        "()V",
        "convertGroup",
        "",
        "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
        "category",
        "",
        "json",
        "",
        "fromJson",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x42c9bc242c913617L    # -7.910142950315355E-14

    const/16 v2, 0x24

    const-string v3, "com/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final convertGroup(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 17
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "networkName":Ljava/lang/String;
    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .local v4, "$this$filter$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .local v5, "$i$f$filter":I
    const/16 v6, 0xb

    aput-boolean v3, v0, v6

    .line 48
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    .local v6, "destination$iv$iv":Ljava/util/Map;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v8, 0x0

    .local v8, "$i$f$filterTo":I
    const/16 v9, 0xc

    aput-boolean v3, v0, v9

    .line 49
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v10, 0xd

    aput-boolean v3, v0, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 50
    .local v10, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v12, v10

    .local v12, "it":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .local v13, "$i$a$-filter-DisconnectListJsonAdapter$convertGroup$networkGroup$1":I
    const/16 v14, 0xe

    aput-boolean v3, v0, v14

    .line 38
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/util/List;

    if-eqz v15, :cond_0

    const/16 v11, 0xf

    aput-boolean v3, v0, v11

    move-object v11, v14

    goto :goto_1

    :cond_0
    const/16 v14, 0x10

    aput-boolean v3, v0, v14

    :goto_1
    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_1

    const/16 v11, 0x11

    aput-boolean v3, v0, v11

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    const/16 v14, 0x12

    aput-boolean v3, v0, v14

    .end local v12    # "it":Ljava/util/Map$Entry;
    .end local v13    # "$i$a$-filter-DisconnectListJsonAdapter$convertGroup$networkGroup$1":I
    :goto_2
    if-nez v11, :cond_2

    const/16 v11, 0x13

    aput-boolean v3, v0, v11

    goto :goto_3

    :cond_2
    const/16 v11, 0x14

    aput-boolean v3, v0, v11

    .line 51
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x15

    aput-boolean v3, v0, v11

    .line 49
    .end local v10    # "element$iv$iv":Ljava/util/Map$Entry;
    :goto_3
    const/16 v10, 0x16

    aput-boolean v3, v0, v10

    goto :goto_0

    .line 54
    :cond_3
    nop

    .line 38
    .end local v4    # "$this$filter$iv":Ljava/util/Map;
    .end local v5    # "$i$f$filter":I
    .end local v6    # "destination$iv$iv":Ljava/util/Map;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v8    # "$i$f$filterTo":I
    const/16 v4, 0x17

    aput-boolean v3, v0, v4

    move-object v4, v6

    .line 39
    .local v4, "networkGroup":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "networkUrl":Ljava/lang/String;
    const/16 v6, 0x18

    aput-boolean v3, v0, v6

    .line 40
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_4

    const/16 v7, 0x19

    aput-boolean v3, v0, v7

    move-object v11, v6

    goto :goto_4

    :cond_4
    const/16 v6, 0x1a

    aput-boolean v3, v0, v6

    :goto_4
    move-object v6, v11

    check-cast v6, Ljava/util/List;

    .line 41
    .local v6, "trackerUrls":Ljava/util/List;
    if-eqz v6, :cond_7

    .line 42
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .local v8, "$i$f$map":I
    const/16 v9, 0x1b

    aput-boolean v3, v0, v9

    .line 55
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v9

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v7

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .local v10, "$i$f$mapTo":I
    const/16 v11, 0x1c

    aput-boolean v3, v0, v11

    .line 56
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v12, 0x1d

    aput-boolean v3, v0, v12

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 57
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "$i$a$-map-DisconnectListJsonAdapter$convertGroup$1":I
    const/16 v15, 0x1e

    aput-boolean v3, v0, v15

    .line 42
    new-instance v15, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    if-eqz v13, :cond_5

    move-object v3, v13

    check-cast v3, Ljava/lang/String;

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    .end local v4    # "networkGroup":Ljava/util/Map;
    .local v16, "networkGroup":Ljava/util/Map;
    invoke-direct {v15, v3, v4, v1, v5}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-map-DisconnectListJsonAdapter$convertGroup$1":I
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    const/16 v3, 0x20

    const/4 v15, 0x1

    aput-boolean v15, v0, v3

    move-object/from16 v4, v16

    const/4 v3, 0x1

    goto :goto_5

    .line 42
    .end local v16    # "networkGroup":Ljava/util/Map;
    .restart local v4    # "networkGroup":Ljava/util/Map;
    .restart local v12    # "item$iv$iv":Ljava/lang/Object;
    .restart local v13    # "it":Ljava/lang/Object;
    .restart local v14    # "$i$a$-map-DisconnectListJsonAdapter$convertGroup$1":I
    :cond_5
    const/4 v15, 0x1

    new-instance v3, Lkotlin/TypeCastException;

    const-string v11, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v3, v11}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1f

    aput-boolean v15, v0, v11

    throw v3

    .line 58
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-map-DisconnectListJsonAdapter$convertGroup$1":I
    :cond_6
    const/4 v15, 0x1

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    const/16 v3, 0x21

    aput-boolean v15, v0, v3

    return-object v2

    .line 44
    :cond_7
    const/4 v15, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x22

    aput-boolean v15, v0, v3

    return-object v2
.end method


# virtual methods
.method public final fromJson(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .param p1, "json"    # Ljava/util/Map;
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;>;)",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v2, v0, v2

    .line 28
    .local v1, "trackers":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v2, v0, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    aput-boolean v2, v0, v6

    check-cast v5, Ljava/lang/String;

    .local v5, "category":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "list":Ljava/util/List;
    const/4 v6, 0x4

    aput-boolean v2, v0, v6

    .line 29
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x5

    aput-boolean v2, v0, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .local v7, "trackerGroup":Ljava/util/Map;
    const/4 v8, 0x6

    aput-boolean v2, v0, v8

    .line 30
    invoke-direct {p0, v5, v7}, Lcom/duckduckgo/app/trackerdetection/api/DisconnectListJsonAdapter;->convertGroup(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .end local v7    # "trackerGroup":Ljava/util/Map;
    const/4 v7, 0x7

    aput-boolean v2, v0, v7

    goto :goto_1

    .line 28
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "category":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x8

    aput-boolean v2, v0, v4

    goto :goto_0

    .line 33
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    const/16 v4, 0x9

    aput-boolean v2, v0, v4

    return-object v3
.end method
