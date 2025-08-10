.class public final Lorg/ligi/passandroid/model/PassDefinitions;
.super Ljava/lang/Object;
.source "PassDefinitions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/PassDefinitions;",
        "",
        "()V",
        "NAME_TO_TYPE",
        "",
        "",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "getNAME_TO_TYPE",
        "()Ljava/util/Map;",
        "TYPE_TO_NAME",
        "getTYPE_TO_NAME",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/model/PassDefinitions;

.field private static final NAME_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/ligi/passandroid/model/pass/PassType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 5
    new-instance v5, Lorg/ligi/passandroid/model/PassDefinitions;

    invoke-direct {v5}, Lorg/ligi/passandroid/model/PassDefinitions;-><init>()V

    sput-object v5, Lorg/ligi/passandroid/model/PassDefinitions;->INSTANCE:Lorg/ligi/passandroid/model/PassDefinitions;

    .line 7
    const/4 v5, 0x5

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    const-string v8, "coupon"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 8
    const/4 v6, 0x1

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    const-string v8, "eventTicket"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 9
    const/4 v6, 0x2

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    const-string v8, "boardingPass"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 10
    const/4 v6, 0x3

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    const-string v8, "generic"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 11
    const/4 v6, 0x4

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    const-string v8, "storeCard"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 7
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/ligi/passandroid/model/PassDefinitions;->TYPE_TO_NAME:Ljava/util/Map;

    .line 13
    sget-object v5, Lorg/ligi/passandroid/model/PassDefinitions;->TYPE_TO_NAME:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 18
    .local v1, "capacity$iv":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 19
    .local v2, "destination$iv$iv":Ljava/util/Map;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v4, v3

    .line 20
    check-cast v4, Ljava/util/Map$Entry;

    .line 13
    .local v4, "it":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    .end local v4    # "it":Ljava/util/Map$Entry;
    :cond_0
    nop

    sput-object v2, Lorg/ligi/passandroid/model/PassDefinitions;->NAME_TO_TYPE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNAME_TO_TYPE()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/ligi/passandroid/model/pass/PassType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lorg/ligi/passandroid/model/PassDefinitions;->NAME_TO_TYPE:Ljava/util/Map;

    return-object v0
.end method

.method public final getTYPE_TO_NAME()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 7
    sget-object v0, Lorg/ligi/passandroid/model/PassDefinitions;->TYPE_TO_NAME:Ljava/util/Map;

    return-object v0
.end method
