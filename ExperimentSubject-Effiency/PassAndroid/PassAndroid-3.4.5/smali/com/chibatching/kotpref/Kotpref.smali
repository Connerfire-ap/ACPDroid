.class public final Lcom/chibatching/kotpref/Kotpref;
.super Ljava/lang/Object;
.source "Kotpref.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004R*\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048@@BX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/chibatching/kotpref/Kotpref;",
        "",
        "()V",
        "<set-?>",
        "Landroid/content/Context;",
        "context",
        "getContext$kotpref_release",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "init",
        "",
        "kotpref_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/chibatching/kotpref/Kotpref;

.field private static context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/chibatching/kotpref/Kotpref;

    invoke-direct {v0}, Lcom/chibatching/kotpref/Kotpref;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lcom/chibatching/kotpref/Kotpref;

    .end local p0    # "this":Lcom/chibatching/kotpref/Kotpref;
    sput-object p0, Lcom/chibatching/kotpref/Kotpref;->INSTANCE:Lcom/chibatching/kotpref/Kotpref;

    return-void
.end method

.method private final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p1, Lcom/chibatching/kotpref/Kotpref;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext$kotpref_release()Landroid/content/Context;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/chibatching/kotpref/Kotpref;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kotpref has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chibatching/kotpref/Kotpref;->context:Landroid/content/Context;

    .line 26
    return-void
.end method
