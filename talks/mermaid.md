

graph RL
    B[pandas] --> A[C:\Programme..\some_path\...]
    C[matplotlib] --> A
    D[jupyter notebook] --> A
    E[geopandas] --> A
    A --> X[Project A]
    A --> Y[Project B]
    A --> Z[Projekt C]

    
graph RL
    B[pandas] --> A[AGI-env]
    C[matplotlib] --> A
    D[jupyter notebook] --> A
    E[geopandas] --> F[SA2-env]
    B --> F
    C --> F
    A --> X[Project A]
    A --> Y[Project B]
    F --> Z[Projekt C]

    
