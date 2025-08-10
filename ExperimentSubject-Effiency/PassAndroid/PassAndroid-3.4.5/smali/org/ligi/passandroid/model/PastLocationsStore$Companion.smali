.class public final Lorg/ligi/passandroid/model/PastLocationsStore$Companion;
.super Ljava/lang/Object;
.source "PastLocationsStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/model/PastLocationsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/PastLocationsStore$Companion;",
        "",
        "()V",
        "KEY_PAST_LOCATIONS",
        "",
        "getKEY_PAST_LOCATIONS",
        "()Ljava/lang/String;",
        "MAX_ELEMENTS",
        "",
        "getMAX_ELEMENTS",
        "()I",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/ligi/passandroid/model/PastLocationsStore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_PAST_LOCATIONS()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 52
    # getter for: Lorg/ligi/passandroid/model/PastLocationsStore;->KEY_PAST_LOCATIONS:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/model/PastLocationsStore;->access$getKEY_PAST_LOCATIONS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMAX_ELEMENTS()I
    .locals 1

    .prologue
    .line 53
    # getter for: Lorg/ligi/passandroid/model/PastLocationsStore;->MAX_ELEMENTS:I
    invoke-static {}, Lorg/ligi/passandroid/model/PastLocationsStore;->access$getMAX_ELEMENTS$cp()I

    move-result v0

    return v0
.end method
