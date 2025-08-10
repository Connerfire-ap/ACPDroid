.class public final Lorg/ligi/passandroid/model/pass/PassImpl$Companion;
.super Ljava/lang/Object;
.source "PassImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/model/pass/PassImpl;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassImpl$Companion;",
        "",
        "()V",
        "FILETYPE_IMAGES",
        "",
        "getFILETYPE_IMAGES",
        "()Ljava/lang/String;",
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFILETYPE_IMAGES()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 87
    # getter for: Lorg/ligi/passandroid/model/pass/PassImpl;->FILETYPE_IMAGES:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/model/pass/PassImpl;->access$getFILETYPE_IMAGES$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
