.class public final Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "KeyboardAwareEditText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J0\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\tH\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;",
        "Landroid/support/v7/widget/AppCompatEditText;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onBackKeyListener",
        "Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;",
        "getOnBackKeyListener",
        "()Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;",
        "setOnBackKeyListener",
        "(Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;)V",
        "showImeAfterFirstLayout",
        "",
        "onFocusChanged",
        "",
        "focused",
        "direction",
        "previouslyFocusedRect",
        "Landroid/graphics/Rect;",
        "onKeyPreIme",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private onBackKeyListener:Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;

.field private showImeAfterFirstLayout:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c28d3e6d45a0c94L    # -4.302010380134571E-213

    const/16 v2, 0x22

    const-string v3, "com/duckduckgo/app/browser/omnibar/KeyboardAwareEditText"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 32
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 33
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-boolean v2, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->showImeAfterFirstLayout:Z

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getShowImeAfterFirstLayout$p(Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;)Z
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->showImeAfterFirstLayout:Z

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final synthetic access$setShowImeAfterFirstLayout$p(Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;Z)V
    .locals 3
    .param p0, "$this"    # Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;
    .param p1, "<set-?>"    # Z

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iput-boolean p1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->showImeAfterFirstLayout:Z

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->_$_findViewCache:Ljava/util/HashMap;

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 p1, 0x1c

    aput-boolean v2, v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x1d

    aput-boolean v2, v0, p1

    :goto_1
    const/16 p1, 0x1e

    aput-boolean v2, v0, p1

    return-object v1
.end method

.method public final getOnBackKeyListener()Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->onBackKeyListener:Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 61
    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    .line 62
    invoke-static {p0}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->showKeyboard(Landroid/view/View;)V

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    .line 64
    :goto_0
    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "event"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 41
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    aput-boolean v2, v0, v1

    .line 45
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    return v1

    .line 41
    :cond_1
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 42
    iget-object v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->onBackKeyListener:Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;->onBackKey()Z

    move-result v1

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    :goto_1
    const/16 v3, 0x8

    aput-boolean v2, v0, v3

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatEditText;->onLayout(ZIIII)V

    .line 50
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->showImeAfterFirstLayout:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 51
    new-instance v1, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText$onLayout$1;-><init>(Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->post(Ljava/lang/Runnable;)Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 56
    :goto_0
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setOnBackKeyListener(Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;)V
    .locals 2
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput-object p1, p0, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->onBackKeyListener:Lcom/duckduckgo/app/browser/omnibar/OnBackKeyListener;

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method
