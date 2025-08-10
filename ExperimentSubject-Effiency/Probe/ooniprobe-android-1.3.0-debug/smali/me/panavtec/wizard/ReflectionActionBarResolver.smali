.class Lme/panavtec/wizard/ReflectionActionBarResolver;
.super Ljava/lang/Object;
.source "ReflectionActionBarResolver.java"

# interfaces
.implements Lme/panavtec/wizard/ActionBarResolver;


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private final activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 13
    return-void
.end method

.method private resolveActionBar()V
    .locals 3

    .line 22
    :try_start_0
    iget-object v0, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSupportActionBar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    .local v0, "getSupportActionBar":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBar;

    iput-object v1, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->actionBar:Landroid/support/v7/app/ActionBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "getSupportActionBar":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .line 16
    iget-object v0, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/panavtec/wizard/ReflectionActionBarResolver;->resolveActionBar()V

    .line 17
    :cond_0
    iget-object v0, p0, Lme/panavtec/wizard/ReflectionActionBarResolver;->actionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method
