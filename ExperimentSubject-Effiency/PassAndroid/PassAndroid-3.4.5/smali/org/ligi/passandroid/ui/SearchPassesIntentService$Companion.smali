.class public final Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;
.super Ljava/lang/Object;
.source "SearchPassesIntentService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/SearchPassesIntentService;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;",
        "",
        "()V",
        "FOUND_NOTIFICATION_ID",
        "",
        "getFOUND_NOTIFICATION_ID",
        "()I",
        "PROGRESS_NOTIFICATION_ID",
        "getPROGRESS_NOTIFICATION_ID",
        "REQUEST_CODE",
        "getREQUEST_CODE",
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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFOUND_NOTIFICATION_ID()I
    .locals 1

    .prologue
    .line 154
    # getter for: Lorg/ligi/passandroid/ui/SearchPassesIntentService;->FOUND_NOTIFICATION_ID:I
    invoke-static {}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->access$getFOUND_NOTIFICATION_ID$cp()I

    move-result v0

    return v0
.end method

.method public final getPROGRESS_NOTIFICATION_ID()I
    .locals 1

    .prologue
    .line 153
    # getter for: Lorg/ligi/passandroid/ui/SearchPassesIntentService;->PROGRESS_NOTIFICATION_ID:I
    invoke-static {}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->access$getPROGRESS_NOTIFICATION_ID$cp()I

    move-result v0

    return v0
.end method

.method public final getREQUEST_CODE()I
    .locals 1

    .prologue
    .line 156
    # getter for: Lorg/ligi/passandroid/ui/SearchPassesIntentService;->REQUEST_CODE:I
    invoke-static {}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->access$getREQUEST_CODE$cp()I

    move-result v0

    return v0
.end method
