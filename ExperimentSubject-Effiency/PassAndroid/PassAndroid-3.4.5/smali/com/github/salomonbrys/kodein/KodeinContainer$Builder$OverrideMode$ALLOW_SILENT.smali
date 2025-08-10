.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_SILENT;
.super Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ALLOW_SILENT"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0001\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_SILENT;",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;",
        "(Ljava/lang/String;I)V",
        "isAllowed",
        "",
        "()Z",
        "must",
        "overrides",
        "(Ljava/lang/Boolean;)Ljava/lang/Boolean;",
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isAllowed()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public must(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p1, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 149
    return-object p1
.end method
