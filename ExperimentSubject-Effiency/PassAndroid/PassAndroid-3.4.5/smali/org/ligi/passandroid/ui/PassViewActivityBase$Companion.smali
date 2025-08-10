.class public final Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;",
        "",
        "()V",
        "EXTRA_KEY_UUID",
        "",
        "getEXTRA_KEY_UUID",
        "()Ljava/lang/String;",
        "mightPassBeAbleToUpdate",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
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
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXTRA_KEY_UUID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 258
    # getter for: Lorg/ligi/passandroid/ui/PassViewActivityBase;->EXTRA_KEY_UUID:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->access$getEXTRA_KEY_UUID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final mightPassBeAbleToUpdate(Lorg/ligi/passandroid/model/pass/Pass;)Z
    .locals 1
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getWebServiceURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getPassIdent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
