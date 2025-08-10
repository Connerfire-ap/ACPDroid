.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;",
        "",
        "()V",
        "get",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;",
        "allow",
        "",
        "silent",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(ZZ)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
    .locals 1
    .param p1, "allow"    # Z
    .param p2, "silent"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->FORBID:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->ALLOW_SILENT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    goto :goto_0

    .line 195
    :cond_1
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->ALLOW_EXPLICIT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    goto :goto_0
.end method
