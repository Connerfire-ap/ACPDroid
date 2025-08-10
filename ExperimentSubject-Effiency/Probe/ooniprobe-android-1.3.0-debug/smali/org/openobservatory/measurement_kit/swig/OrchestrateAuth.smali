.class public Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;
.super Ljava/lang/Object;
.source "OrchestrateAuth.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->new_OrchestrateAuth()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)J
    .locals 2
    .param p0, "obj"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;

    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static make_password()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_make_password()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public auth_token()Ljava/lang/String;
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_auth_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 30
    iget-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    .line 31
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->delete_OrchestrateAuth(J)V

    .line 34
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;
    :cond_0
    iput-wide v2, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 95
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_dump(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;

    move-result-object v0

    return-object v0
.end method

.method public dumps()Ljava/lang/String;
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_dumps(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expiry_time()Ljava/lang/String;
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_expiry_time(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->delete()V

    .line 26
    return-void
.end method

.method public is_valid()Z
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_is_valid(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 87
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_load(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;

    move-result-object v0

    return-object v0
.end method

.method public loads(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 91
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_loads(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;

    move-result-object v0

    return-object v0
.end method

.method public logged_in()Z
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_logged_in(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Z

    move-result v0

    return v0
.end method

.method public password()Ljava/lang/String;
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_password(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set_auth_token(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 47
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_set_auth_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public set_expiry_time(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 55
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_set_expiry_time(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public set_logged_in(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 63
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_set_logged_in(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Z)V

    .line 64
    return-void
.end method

.method public set_password(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_set_password(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public set_username(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 71
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_set_username(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public username()Ljava/lang/String;
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateAuth_username(JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
