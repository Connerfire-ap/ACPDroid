.class final Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;
.super Lkotlin/jvm/internal/Lambda;
.source "references.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/RefSingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/RefMaker;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;-><init>()V

    sput-object v0, Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;->INSTANCE:Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/RefSingletonBinding$_ref$1;->invoke()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
