.class public final Lorg/ligi/passandroid/model/PastLocationsStore;
.super Ljava/lang/Object;
.source "PastLocationsStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/model/PastLocationsStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\tR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/PastLocationsStore;",
        "",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "(Landroid/content/SharedPreferences;Lorg/ligi/passandroid/Tracker;)V",
        "locations",
        "",
        "",
        "getLocations",
        "()Ljava/util/Set;",
        "deleteOneElementFromSet",
        "",
        "pastLocations",
        "",
        "putLocation",
        "path",
        "Companion",
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
.field public static final Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

# The value of this static final field might be set in the static constructor
.field private static final KEY_PAST_LOCATIONS:Ljava/lang/String; = "past_locations"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MAX_ELEMENTS:I = 0x5


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tracker:Lorg/ligi/passandroid/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    .line 52
    const-string v0, "past_locations"

    sput-object v0, Lorg/ligi/passandroid/model/PastLocationsStore;->KEY_PAST_LOCATIONS:Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    sput v0, Lorg/ligi/passandroid/model/PastLocationsStore;->MAX_ELEMENTS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lorg/ligi/passandroid/Tracker;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tracker"    # Lorg/ligi/passandroid/Tracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->tracker:Lorg/ligi/passandroid/Tracker;

    return-void
.end method

.method public static final synthetic access$getKEY_PAST_LOCATIONS$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lorg/ligi/passandroid/model/PastLocationsStore;->KEY_PAST_LOCATIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMAX_ELEMENTS$cp()I
    .locals 1

    .prologue
    .line 9
    sget v0, Lorg/ligi/passandroid/model/PastLocationsStore;->MAX_ELEMENTS:I

    return v0
.end method

.method private final deleteOneElementFromSet(Ljava/util/Set;)V
    .locals 8
    .param p1, "pastLocations"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v3, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;->getMAX_ELEMENTS()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .local v0, "deleteAtPosition":I
    move-object v3, p1

    .line 32
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/collections/IndexedValue;

    invoke-virtual {v3}, Lkotlin/collections/IndexedValue;->component1()I

    move-result v2

    .local v2, "pos":I
    invoke-virtual {v3}, Lkotlin/collections/IndexedValue;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "location":Ljava/lang/String;
    if-ne v2, v0, :cond_0

    .line 34
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "pos":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final getLocations()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

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
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;->getKEY_PAST_LOCATIONS()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "sharedPreferences.getStr\u2026TIONS, HashSet<String>())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putLocation(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "path"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 28
    :goto_0
    return-void

    .line 16
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;->getKEY_PAST_LOCATIONS()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 18
    .local v0, "pastLocations":Ljava/util/Set;
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    sget-object v2, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;->getMAX_ELEMENTS()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 19
    invoke-direct {p0, v0}, Lorg/ligi/passandroid/model/PastLocationsStore;->deleteOneElementFromSet(Ljava/util/Set;)V

    .line 22
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_3
    iget-object v1, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v2, "scan"

    const-string v3, "put location"

    const-string v4, "count"

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    iget-object v1, p0, Lorg/ligi/passandroid/model/PastLocationsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lorg/ligi/passandroid/model/PastLocationsStore;->Companion:Lorg/ligi/passandroid/model/PastLocationsStore$Companion;

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;->getKEY_PAST_LOCATIONS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
